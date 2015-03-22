React = require('react')

# var comm = new Icecomm('4Mt09Xq/gyUee2TyDE.qC1.Lg2cXec.ZWBq3AGy32ZnDpsnP0.');

DeChat = React.createClass
  render: () ->
    return <div className="s container fa">
              <div className="col-xs-9">
                <div className="foldIn row">
                  <div className="chatroom col-xs-2">
                    <h4>Channels</h4>
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
                    <div className="videobox">
                      <div className="video">
                        
                      </div>
                      <div className="videoname">
                        Shuo
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div className="chat col-xs-3">
              <i className="fa fa-arrow-left" id="expand"></i>
                <section className="navbar">
                  <h4>Conversation</h4>
                  <button className="camera"><i className="fa fa-video-camera"></i></button>
                </section>
                <section className="chatbox">
                  <div className="messagesBox">
                    <div className="messageContainer">
                      <div className="username">Ilan</div>
                      <div className="message">geese</div>
                    </div>
                    <div className="messageContainer">
                      <div className="username">Anton</div>
                      <div className="message">need to finish algo hw</div>
                    </div>
                    <div className="messageContainer">
                      <div className="username">Shuo</div>
                      <div className="message">Okay dokes</div>
                    </div>
                  </div>
                </section>
                <section className="inputBox row">
                <input className="newMessage col-xs-9" placeholder="chat here" /> 
                  <button type="submit" className="col-xs-3 btn btn-primary">Send</button>
                </section>
              </div> 
            </div>

module.exports = DeChat
