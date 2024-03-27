// app/assets/javascripts/channels/chat_channel.js
App.chat = App.cable.subscriptions.create("ChatChannel", {
    received: function(data) {
        $('#chat-output').append('<p>' + data.message + '</p>');
    },

    send_message: function(message) {
        return this.perform('receive', { message: message });
    }
});
