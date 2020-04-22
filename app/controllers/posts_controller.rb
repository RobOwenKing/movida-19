class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    coords = [current_user.latitude, current_user.longitude]
    @posts = Post.near(coords, 1).order(created_at: :desc)
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    @post.user = current_user
    @post.address = current_user.address
    @post.longitude = current_user.longitude
    @post.latitude = current_user.latitude

    if @post.save
      redirect_to posts_path()
    else
      render :new
    end
  end

  def edit; end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy

    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:isolating, :shopping, :mail, :phone_call, :supplies, :comments)
  end
end
