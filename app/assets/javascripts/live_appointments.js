/* global $ */

$(document).ready(function() {
   var messages = $('#message_box');
   
   function init(){
       messages.scrollTop(messages[0].scrollHeight);
   }
   
   window.setTimeout(init, 50);
});