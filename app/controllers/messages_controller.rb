class MessagesController < ApplicationController
  def create
    message = Message.new
    message.conversation_id = params[:conversation_id]
    message.user = current_user
    message.body = params[:message][:body]
    if message.save
      redirect_to conversation_path(message.conversation_id)
    end
  end
end
