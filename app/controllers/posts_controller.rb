class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
    @users = User.all
  end
  def new
    @users = User.all
  end
  def create
    @temp = Post.create(params[:post])
    redirect_to("/posts/#{@temp.id}")
  end
  def show
    @post = Post.find(params[:id])
    @users = User.all
  end
  def edit
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end
  def update
    @post = Post.find(params[:id])
    @post.update(params[:post])
    redirect_to("/posts/#{@post.id}")
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to("/")
  end
end
