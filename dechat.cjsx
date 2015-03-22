React = require('react')

# var comm = new Icecomm('4Mt09Xq/gyUee2TyDE.qC1.Lg2cXec.ZWBq3AGy32ZnDpsnP0.');



DeChat = React.createClass
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
                    <ul>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                      <li>
                        <div className="videobox">
                          <div className="video"><video></video></div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div className="chat col-xs-3">
                <section className="navbar">
                  <h4>Conversation</h4>
                  <button className="camera"><i className="video fa fa-video-camera"></i>Video</button>
                </section>
                <section className="chatbox">
                  <div className="isme messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="isme messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="isme messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                  <div className="messageContainer">
                    <div className="username">Ilan</div>
                    <div className="message">
                      <span>Today this is a great day and I had so much fun coding</span>
                    </div>
                  </div>
                </section>
                <section className="inputBox row">
                    <input className="newMessage" placeholder="chat here"></input>
                    <button type="submit" className="send btn btn-primary">Send</button>
                </section>
              </div> 
            </div>

module.exports = DeChat
