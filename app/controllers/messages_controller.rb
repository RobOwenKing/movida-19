class MessagesController < ApplicationController
  def create
    @message = Message.new
    @message.conversation_id = params[:conversation_id]
    @message.user = current_user
    @message.body = params[:message][:body]
    @message.save
  end
end
