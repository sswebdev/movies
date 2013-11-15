class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    
    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    
    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

private

  def set_user
    @user = User.find(params[:id])
  end
end
