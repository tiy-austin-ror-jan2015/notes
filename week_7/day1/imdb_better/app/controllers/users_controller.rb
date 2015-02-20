class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    respond_with(@users)
  end



end
