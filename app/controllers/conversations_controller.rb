class ConversationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.find(params[:post_id])
    @conversation = Conversation.create(user: current_user, post: @post)
    @message = Message.new
  end

  def create
  end
end
