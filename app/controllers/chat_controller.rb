# app/controllers/chat_controller.rb (or any appropriate controller)
class ChatController < ApplicationController
  def create
    # Process the chat message
    ActionCable.server.broadcast('chat_channel', message: params[:message])
  end
end
