/* global $ */

App.chat = App.cable.subscriptions.create("LiveAppointmentChannel", {
  connected: function() {
    console.log("Connected to the Live Appointment Channel")
  },
  disconnected: function() {
    console.log("Disconnected from the Live Appointment Channel")
  },
  received: function(data) {
    var messages = $('#message_box');
    messages.append(data['message']);
    messages.scrollTop(messages[0].scrollHeight);
  }
});
