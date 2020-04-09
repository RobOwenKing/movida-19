class ConversationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @conversation = Conversation.new
    @message = Message.new
  end

  def create
  end
end
