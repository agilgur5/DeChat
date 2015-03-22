# dependencies
React = require('react')
DeChat = require('./dechat.cjsx')

# add container for chat into the body
chat_container_div = document.createElement("div")
chat_container_div.id = "chat_container"
document.body.appendChild(chat_container_div)

# render our react component
React.render(<DeChat />, chat_container_div)