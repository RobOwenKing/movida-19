class ConversationsController < ApplicationController
  def index
    @participants = Participant.where(user: current_user)
    @conversations = @participants.map { |part| [part.conversation, Message.where(conversation: part.conversation).last] }
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = Message.where(conversation: @conversation).order(created_at: :desc)
    @message = Message.new
    @post = @conversation.post
  end

  def new
    @post = Post.find(params[:post_id])
    @conversation = Conversation.create(user: current_user, post: @post)
    Participant.create(user: current_user, conversation: @conversation)
    Participant.create(user: @post.user, conversation: @conversation)
    @message = Message.new
  end
end
