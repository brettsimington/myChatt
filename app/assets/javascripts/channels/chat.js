//if ($("meta[name='current-user']").length > 0) {
  App.chat = App.cable.subscriptions.create("ChatChannel", {
  // this is for logging when connected

  connected: function() {
    console.log("Connected to myChat channel.");
    console.log("update is_online? = true");
  },

  disconnected: function() {
    console.log("Disconnected from myChat channel.");
    console.log("update is_online? = false");
  },

  received: function(data) {
    var messages = $('#chatbox');
    messages.append(data['message']);
    messages.scrollTop(messages[0].scrollHeight);
    console.log("Message sent!");
  }

  });
//};