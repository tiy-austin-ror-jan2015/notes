class HomeController < ApplicationController

	#In controllers, methods are called 'actions'
	def index
    set_name
	end

  def about
    set_name
    @age   = 99999999
    @foods = [
      'sushi',
      'tacos',
      'ice cream',
      'chips',
      'soda'
    ]
  end

  def about_us
    redirect_to :about
  end

  private 
  def set_name
    @name = 'Justin'
  end
end