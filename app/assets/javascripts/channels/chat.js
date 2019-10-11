//App.chat = 
App.cable.subscriptions.create("ChatChannel", {
  // this is for logging when connected
  
  received(data) {
    var messages = $('#chatbox');
    messages.append(data['message']);
    messages.scrollTop(messages[0].scrollHeight);
  },

// Beggining of code to show users online/offline with a cool green dot when online
  // Called once when the subscription is created.
  initialized() {
    this.update = this.update.bind(this)
  },
 
  // Called when the subscription is ready for use on the server.
  connected() {
    this.install()
    this.update()
    // code here to show user online
    // is.user_online? == true
    // then update db to show isuseronline to 1
    console.log("Connected to myChat channel.");
    console.log(App);
  },
 
  // Called when the WebSocket connection is closed.
  disconnected() {
    this.uninstall()
    console.log("Disconnected from myChat channel.");
  },
 
  // Called when the subscription is rejected by the server.
  rejected() {
    this.uninstall()
  },
 
  update() {
    this.documentIsActive ? this.appear() : this.away()
  },
 
  appear() {
    // Calls `AppearanceChannel#appear(data)` on the server.
    this.perform("appear", { appearing_on: this.appearingOn })
  },
 
  away() {
    // Calls `AppearanceChannel#away` on the server.
    this.perform("away")
  },
 
  install() {
    window.addEventListener("focus", this.update)
    window.addEventListener("blur", this.update)
    document.addEventListener("turbolinks:load", this.update)
    document.addEventListener("visibilitychange", this.update)
  },
 
  uninstall() {
    window.removeEventListener("focus", this.update)
    window.removeEventListener("blur", this.update)
    document.removeEventListener("turbolinks:load", this.update)
    document.removeEventListener("visibilitychange", this.update)
  },
 
  get documentIsActive() {
    return document.visibilityState == "visible" && document.hasFocus()
  },
 
  get appearingOn() {
    const element = document.querySelector("[data-appearing-on]")
    return element ? element.getAttribute("data-appearing-on") : null
  }
  // End of cool online show

});