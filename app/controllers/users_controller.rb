class UsersController < ApplicationController

  def index
    
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App"
      redirect_to @user
    elsif 
    render 'new' 
    end

  end

  private 
    def user_params
      params.required(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
