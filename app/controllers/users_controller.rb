class UsersController < ApplicationController

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id].to_i)

  end

  def create
    User.create(email: params[:user][:email], password: params[:user][:password])
    redirect_to user_path(User.maximum(:id))
  end

  def edit
    @user = User.find(params[:id].to_i)
  end

  def update
    @user = User.find(params[:id].to_i)
    @user.update(email: params[:user][:email], password: params[:user][:password])
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id].to_i)
    @user.destroy
    redirect_to users_path
  end

end