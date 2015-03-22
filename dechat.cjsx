React = require('react')
ChatAPI = require('./icecomm_wrapper.coffee')

DeChat = React.createClass
  getInitialState: () ->
    return {currentChannel: "default"}
  componentDidMount: () ->
    update = () ->
      @forceUpdate()
    setInterval(update.bind(@), 1000)
  render: () ->
    return <div className="s container">
      <div className="col-xs-9 biggest">
        <div className="foldIn row">
          <div className="chatroom col-xs-2">
            <h4>Chatrooms</h4>
            <div className="room">FB</div>
            <div className="room">AP</div>
            <div className="room">AB</div>
            <div className="room">SP</div>
            <div className="room">FB</div>
            <div className="room">AP</div>
            <div className="room">AB</div>
            <div className="room">SP</div>
          </div>
          <div className="usersBoxContainer col-xs-2">
            <h4>Users</h4>
            <div className="users">
              <div className="userbox">
                <div className="camera_connect"><span className="glyphicon glyphicon-camera"></span></div>
                <p className="username">Shuo</p>
              </div>
            </div>
            <div className="users">
              <div className="userbox">
                <div className="camera_connect"><span className="glyphicon glyphicon-camera"></span></div>
                <p className="username">Ilan</p>
              </div>
            </div>
            <div className="users">
              <div className="userbox">
                <div className="camera_connect"><span className="glyphicon glyphicon-camera"></span></div>
                <p className="username">Anton</p>
              </div>
            </div>
            <div className="users">
              <div className="userbox">
                <div className="camera_connect"><span className="glyphicon glyphicon-camera"></span></div>
                <p className="username">Feifan</p>
              </div>
            </div>
          </div>
          <div className="uservideos col-xs-8">
            <h4>Video</h4>
            <VideoContainer users={ChatAPI.rooms[ChatAPI.currentRoomID].users} />
          </div>
        </div>
      </div>
      <div className="chat col-xs-3">
        <section className="navbar">
          <h4>Conversation</h4>
          <button className="camera"><i className="video fa fa-video-camera"></i>Video</button>
        </section>
        <MessageContainer messages={ChatAPI.rooms[ChatAPI.currentRoomID].channels[@state.currentChannel]} />
        <MessageSender currentChannel={@state.currentChannel} />
      </div> 
    </div>

VideoContainer = React.createClass
  render: () ->
    videos = []
    for key of @props.users
      elem = @props.users[key]
      videos.push <li>
        <div className="videobox">
          <div className="video"><video src={elem.stream}></video></div>
        </div>
      </li>
    return <ul>
      {videos}
    </ul>

MessageContainer = React.createClass
  render: () -> 
    messages = []
    for key of @props.messages
      elem = @props.messages[key]
      name = ChatAPI.rooms[ChatAPI.currentRoomID].users[elem.callerID] || ChatAPI.username
      isme = if elem.callerID == ChatAPI.userID then "isme" else ""
      messages.push <div className={"messageContainer" + " " + isme}>
        <div className="username">{name}</div>
        <div className="message">
          <span>{elem.text}</span>
        </div>
      </div> 
    return <section className="chatbox">
      {messages}
    </section>

MessageSender = React.createClass
  getInitialState: () ->
    return {value: ""}
  sendMessage: () ->
    ChatAPI.createMessage(@state.value, @props.currentChannel)
    @setState({value: ''})
  handleChange: (ev) ->
    @setState({value: ev.target.value})
  render: () ->
    return <section className="inputBox row">
      <input className="newMessage" placeholder="chat here" value={@state.value} onChange={@handleChange}></input>
      <button type="submit" className="send btn btn-primary" onClick={@sendMessage}>Send</button>
    </section>

module.exports = DeChat
