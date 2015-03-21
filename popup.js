// when content is loaded
document.addEventListener('DOMContentLoaded', function () {
  // insert content script and css
  chrome.browserAction.onClicked.addListener(function(tab) {
    chrome.tabs.executeScript(null, {file: 'chat_bundle_compiled.js'});
    chrome.tabs.insertCSS(null, {file: 'chat.css'});
  });
});