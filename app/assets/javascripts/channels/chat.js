App.chat = App.cable.subscriptions.create("ChatChannel", {
  connected: function() {
    console.log("Connected to myChat channle.");
  },
  disconnected: function() {
    console.log("Discnnected from myChat channel.");
  },
  received: function(data) {
    var messages = $('#chatbox');
    messages.append(data['message']);
    messages.scrollTop(messages[0].scrollHeight);
  }
});