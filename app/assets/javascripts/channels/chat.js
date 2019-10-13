App.chat = App.cable.subscriptions.create("ChatChannel", {
  // this is for logging when connected
  
  connected: function() {
    console.log("Connected to myChat channel.");
  },

  disconnected: function() {
    console.log("Disconnected from myChat channel.");
  },

  received: function(data) {
    var messages = $('#chatbox');
    messages.append(data['message']);
    messages.scrollTop(messages[0].scrollHeight);
    console.log("Message sent!");
  }
});