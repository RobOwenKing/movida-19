class ConversationsController < ApplicationController
  def index
    @participants = Participant.where(user: current_user)
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @conversation = Conversation.create(user: current_user, post: @post)
    Participant.create(user: current_user, conversation: @conversation)
    Participant.create(user: @post.user, conversation: @conversation)
    @message = Message.new
  end
end
