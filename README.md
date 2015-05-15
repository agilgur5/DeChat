# DeChat
DeChat is a fully decentralized, serverless, cryptographically secure web chat built inside of a Chrome Extension. With the recent advent of WebRTC, real-time peer-to-peer communication between browsers is finally possible. DeChat was built as a decentralized system that allows any user to chat with each other through a simple browser extension and without a single server. Messaging platforms such as Facebook Messenger, Slack, etc are all built as centralized systems that require servers to use. This inherently creates various privacy and security concerns, as your data is being kept on their servers -- if a hacker were to gain access to the server, they would be able to ask for your data... or the government could ask for your data as well and it would quickly be compromised.  

As seen in most recently in Hong Kong, FireChat delivered a public communication app built with Bluetooth wireless mesh networks to provide P2P decentralized communication so that revolutionaries and the general public could avoid government spies. While it might be difficult to hack into these P2P connections, these mesh networks could be watched and data security would be comprosied. With an encrypted solution, even if your data stream is watched, a hacker would not know what was being sent over anyway. Furthermore, DeChat enables you to speak over any distance securely, not just the range of Bluetooth. It even has video chat!  

DeChat aims to replace or be a secure alternative to current messaging platforms such as Slack, IRC, and even Google Hangouts (which is why the UI is inspired by these systems). As this is a P2P application that does not have a server component, it is limited in certain ways, but mainly in that if you're not online, you won't receive any messages (nearly everything else can be done in the front-end). 

## How To Install/Use/Build
To install all the dependencies, just run:

    npm install

To build the CoffeeScript and SCSS, use:
    
    npm run build

To put a watcher on the CoffeeScript (for incremental builds during development), use:

    npm run start

## How it Works
Currently, DeChat is built with IceCOMM, React, Crypto, SCSS, CoffeeScript, and Browserify.  

IceCOMM is a recent API that launched on ProductHunt for the WebRTC protocol that tremendously simplifies most of the P2P connectivity and provides the NAT/TURN/ICE servers when initiating a chat session.  

DeChat is currently built as two main sections, the Chat API and the Chat View. The Chat API is essentially a global interface of functions (it acts similar to both the Controller and Model layer of a typical MVC) and the Chat View is the UI layer. There are a few other scripts used to get it to work as an extension, but those are the main two.

## Future Work
1.   Move to a Flux stack. Since I didn't have enough time at HackBU to set that up, it currently uses `setInterval` to get the app to re-render every few seconds (no publisher-subscriber model).
2.   Transition to immutable data structures with Immutable-js. This isn't necessary and is low priority, but will speed up the app and of course provide data immutability.
3.   Get encryption working. I'm not an encryption expert and Node's Crypto package kept giving an error on our simple encryption... not sure why :/ Perhaps check out 'crypto-browserify'?
4.   Move back to a popup style extension; I thought there could be cool use cases of having a sidebar open in any webpage... but I'm no longer sure how much people would actually want that. Also, since we're injecting all this JS/CSS into the page, the styling is massively different on every page.
5.   Re-style the entire app. Yea... I tasked my team to design and style and they didn't quite do the latter part well. 4. needs to be implemented for this to work properly on all pages (HIGH priority).
6.   Re-style/re-design icon and landing page
7.   Hide video tab and videos themselves (if possible since it may not be possible to turn off the stream) with the video toggle button (w/ animations)
8.   Add GUI for channels and such and also make the channel/users/chatrooms tab toggleable (w/ animations)
9.   Add GUI for changing/adding channels, chatrooms, etc
10.  Remove video elements after user leaves chat (simple)
11.  Keep scrollbar at bottom of chat at all times
12.  Implement WebSQL to locally store all the conversations/chatrooms/channels, etc (HIGH priority)
13.  Get inputting names to work/debug small problems that occurred during hackathon

## Potential/Further Future Work
1.   Move to assymetric key encryption for each user. This would make it possible to give chatroom-id and not compromise security. Users would choose which online users they could give their public key to. IceCOMM has support for sending individual messages, and your message would have to be encrypted and sent to each user in the chatroom separately (since they have to be encrypted with a different key for each person).
2.   Other security features
3.   More Slack-like features such as # of unread messages, sending files, etc.
4.   More Hangouts-like feaures to make it better than just a grid of small heads
5.   Video encryption capabilities? (requires editing IceCOMM itself)
6.   Offline/background capabilities (so you never/rarely miss a message)
7.   Chrome push notifications?
8.   Some type of mobile support? (other applications do this, so not necessary, but would be nice for users to have)
9.   Suggestions? There's plenty more to add!