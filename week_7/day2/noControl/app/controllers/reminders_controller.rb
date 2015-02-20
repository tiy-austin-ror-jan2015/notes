class RemindersController < ApplicationController

  def index
  end

  def new
  end

  def create
    @reminder = Reminder.new(reminder_params)
    @reminder.user_id = params[:user_id].to_i
    if @reminder.save
      redirect_to root_path
    else
      render :new, @errors
    end
  end

  def update
  end

  def destroy
  end

  private

  def reminder_params
    params.require(:reminder).permit(:title, :body, :priority)
  end
end
