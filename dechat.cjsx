React = require('react')

DeChat = React.createClass
  render: () ->
    return <div class="s container">
      <div class="foldIn">
        <div class="chatroom col-xs-1">
          <h4>Channels</h4>
          <div class="room">FB</div>
          <div class="room">AP</div>
          <div class="room">AB</div>
          <div class="room">SP</div>
          <div class="room">FB</div>
          <div class="room">AP</div>
          <div class="room">AB</div>
          <div class="room">SP</div>
        </div>
        <div class="usersBoxContainer col-xs-2">
          <h4>Users</h4>
          <div class="users">
            <div class="userbox">
              <div class="camera_connect"><span class="glyphicon glyphicon-camera"></span></div>
              <p class="username">Shuo</p>
            </div>
          </div>
          <div class="users">
            <div class="userbox">
              <div class="camera_connect"><span class="glyphicon glyphicon-camera"></span></div>
              <p class="username">Ilan</p>
            </div>
          </div>
          <div class="users">
            <div class="userbox">
              <div class="camera_connect"><span class="glyphicon glyphicon-camera"></span></div>
              <p class="username">Anton</p>
            </div>
          </div>
          <div class="users">
            <div class="userbox">
              <div class="camera_connect"><span class="glyphicon glyphicon-camera"></span></div>
              <p class="username">Feifan</p>
            </div>
          </div>
        </div>
        <div class="uservideos col-xs-6">
          <h4>Video</h4>
          <div class="videobox">
            <div class="video">
              
            </div>
            <div class="videoname">
              Shuo
            </div>
          </div>
        </div>
      </div>
      <div class="chat col-xs-3">
      <i class="fa fa-arrow-left" id="expand"></i>
        <section class="navbar">
          <h4>Conversation</h4>
          <button class="camera"><i class="fa fa-video-camera"></i></button>
        </section>
        <section class="chatbox">
          <div class="messagesBox">
            <div class="messageContainer">
              <div class="username">Ilan</div>
              <div class="message">geese</div>
            </div>
            <div class="messageContainer">
              <div class="username">Anton</div>
              <div class="message">need to finish algo hw</div>
            </div>
            <div class="messageContainer">
              <div class="username">Shuo</div>
              <div class="message">Okay dokes</div>
            </div>
          </div>
        </section>
        <section class="inputBox row">
          <input class="newMessage col-xs-8" placeholder="chat here">
          <button type="submit" class="col-xs-2 btn btn-primary">Send</button>
        </section>
      </div> 
    </div>

module.exports = DeChat
