// insert content script and css
chrome.browserAction.onClicked.addListener(function(tab) {
  chrome.tabs.executeScript(null, {file: 'scripts/icecomm.js'}); // needs to be inserted here since it's not packaged
  chrome.tabs.executeScript(null, {file: 'chat_bundle_compiled.js'});
  chrome.tabs.insertCSS(null, {file: 'chat_bundle_compiled.css'});
});