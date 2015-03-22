React = require('react')

DeChat = React.createClass
  getInitialState: ->
    { collapse_state: "collapse", container_state: "", toggle:"off", eighth:"", fourth: ""}
  toggle: (e) ->
    if @state.collapse_state == ""
      cstate = "collapse" 
      container_state = ""
      toggle = "on"
      eighth = ""
      fourth = ""
    else
      cstate = ""
      container_state = "container"
      toggle = "off"
      eighth = "col-xs-8" 
      fourth = "col-xs-4"
    console.log(cstate)
    console.log(container_state)
    console.log(toggle)
    @setState({collapse_state: cstate, container_state: container_state, toggle_state: toggle, eighth: eighth, fourth: fourth})
  render: () ->
    return <div className={"s fa" + @state.container_state}> 
              <div className={@state.eighth}>
                <div className={"container " + @state.collapse_state} id="foldIn">
                  <div className="row">
                    <div className="chatroom col-xs-1">
                      <h4></h4>
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
                      <div className="usersContainer">
                        <div className="users">
                          <div className="userbox">
                            <p className="username">Shuo</p>
                          </div>
                        </div>
                        <div className="users">
                          <div className="userbox">
                            <p className="username">Ilan</p>
                          </div>
                        </div>
                        <div className="users">
                          <div className="userbox">
                            <p className="username">Anton</p>
                          </div>
                        </div>
                        <div className="users">
                          <div className="userbox">
                            <p className="username">Feifan</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="uservideos col-xs-9">
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
              </div>
              <div className={@state.fourth}>
                <div className="chat">
                  <section className="navbar">
                    <h4>Conversation</h4>
                      <button className="camera">
                        <i className={"fa fa-video-camera " + @state.toggle_state} onClick={@toggle} >
                        </i>
                      </button>
                  </section>
                  <section className="chatbox">
                    <div className="messagesBox">
                      <div className="username">Ilan</div>
                      <div className="messageContainer">
                        <div className="message">
                          <span>Today this is a great day and I had so much fun coding</span>
                        </div>
                      </div>
                      <div className="username">Ilan</div>
                      <div className="messageContainer">
                        <div className="message">geese</div>
                      </div>
                      <div className="username">Ilan</div>
                      <div className="messageContainer">
                        <div className="message">geese</div>
                      </div>
                    </div>
                  </section>
                  <section className="inputBox row">
                    <input className="newMessage" placeholder="chat here"></input>
                    <button type="submit" className="send btn btn-primary">Send</button>
                  </section>
                </div> 
              </div>
          </div>

module.exports = DeChat
