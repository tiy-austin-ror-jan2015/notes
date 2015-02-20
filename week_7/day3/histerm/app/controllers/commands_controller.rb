class CommandsController < ApplicationController
  before_action :find_session

  def index
    render json: @session.commands.to_json
  end

  def new
    @command = Command.new(session_id: @session.slug)
  end

  def create
    @command = @session.commands.build(command_params)
    if @command.save!
      render json: @command
    else
      render json: @command.errors, status: :unprocessable_entity
    end
  end

  private

  def find_session
    @session = Session.where(slug: params[:session_slug]).first
    session_not_found if @session.nil?
  end

  def command_params
    params.require(:command).permit(:name, :desc)
  end
end
