class UsersController < ApplicationController
  def new
  end
  def index
    @users = User.all
  end
  def create
    @temp = User.create(params[:users])
    redirect_to("/users/#{@temp.id}")
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(params[:users])
    redirect_to("/users/#{@user.id}")
  end
end
