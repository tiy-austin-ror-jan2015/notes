class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, flash: { notice: 'User succesfully created!' }
    else
      flash[:alert] = 'oops'
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :avatar)
  end
end
