class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :index

  def index
    @users = User.all.order(:profile_name)
    @user = User.first
  end

  def show
    @user = User.find(params[:id])
    chats = Chat.all
    @chats = chats.where(user_id:@user_id)
  end

  def delete
  end

  def new
    @user = User.new
  end


def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render "home/index" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
    def set_user
      @user = User.find(params[:id])
    end


    def user_params
      params.require(:user).permit(:first_name, :last_name, :profile_name, :location, :photo_url, :bio)
    end
end
