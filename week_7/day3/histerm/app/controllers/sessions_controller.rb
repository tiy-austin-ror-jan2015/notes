class SessionsController < ApplicationController
  def show
    @session = Session.where(slug: params[:slug]).first || session_not_found
  end

  def create
    @session = Session.build
    if @session.save!
      render json: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end
end
