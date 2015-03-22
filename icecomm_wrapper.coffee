crypto = require('crypto')

comm = new Icecomm('5icHQ35/1XMHZM3UJF4MoPNh/lWhScDWVVE9n1G6EE8U2vyy')
currentRoomID = 0
username = ''
userID = 0
rooms = {} 
# rooms -> key = roomID, value = {users, channels}
# channels -> key = channelName, value = [messages]
# messages -> {text, callerID}
# users -> key = callerID, value = {stream, name}

# encrypt data
encrypt = (data) ->
  return data#crypto.publicEncrypt(currentRoomID, new Buffer(JSON.stringify(data), 'utf8'))

# decrypt data
decrypt = (data) ->
  return data#JSON.parse(crypto.privateDecrypt(currentRoomID, data).toString('utf8'))

createName = (name) ->
  username = name

# add a chat room locally (helper)
addLocalChatRoom = (roomID) ->
  # create channel dict in room + message array in channel
  if !rooms[roomID]? 
    rooms[roomID] = {"users": {}, "channels": {"default": []}}

# create a chat room
createChatRoom = () ->
  currentRoomID = crypto.randomBytes(20).toString('hex')
  addLocalChatRoom(currentRoomID)
  comm.connect(currentRoomID)
  comm.send(encrypt({name: username}))

# join a chat room
joinChatRoom = (roomID) ->
  currentRoomID = roomID
  addLocalChatRoom(currentRoomID)
  comm.connect(currentRoomID)
  comm.send(encrypt({name: username}))

# add a channel locally (helper)
addLocalChannel = (channelName) -> 
  # create message array in channel
  if !rooms[currentRoomID].channels[channelName]? 
    rooms[currentRoomID].channels[channelName] = []

# create a channel
createChannel = (channelName) ->
  addLocalChannel(channelName)
  comm.send(encrypt({channel: channelName}))

# add a message locally (helper)
addLocalMessage = (message, channelName, callerID) ->
  addLocalChannel(channelName)
  rooms[currentRoomID].channels[channelName].push({text: message, callerID: callerID})

# send a message
createMessage = (messageText, channelName) ->
  channel = channelName || "default"
  addLocalMessage(messageText, channel, userID)
  comm.send(encrypt({channel: channel, message: messageText}))

# add a local user's name (helper)
addLocalUserName = (name, callerID) ->
  rooms[currentRoomID].users[callerID].name = name

# receive a message
receiveData = (options) ->
  data = decrypt(options.data)
  callerID = options.callerID
  # decode the data stream
  if data[message]?
    addLocalMessage(data[message], data[channel], callerID)
  else if data[channel]?
    addLocalChannel(data[channel])
  else
    addLocalUserName(data[name], callerID)

addLocalUser = (stream, callerID) ->
  rooms[currentRoomID].users[callerID] = {stream: stream, name: ""}

# receive a connection
receiveConnection = (options) ->
  addLocalUser(options.stream, options.callerID)


# TODO: Flux the rooms variable and possibly username/userID/currentRoomID


comm.on('data', receiveData)
comm.on('connected', receiveConnection)

createName("Joe")
createChatRoom()
#userID = comm.getLocalID()

module.exports = {
  currentRoomID: currentRoomID
  username: username
  userID: userID
  rooms: rooms
  createName: createName
  createChatRoom: createChatRoom
  joinChatRoom: joinChatRoom
  createChannel: createChannel
  createMessage: createMessage
}



