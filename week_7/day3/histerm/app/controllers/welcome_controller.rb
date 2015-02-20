class WelcomeController < ApplicationController
  def index
    @sessions = Session.all.limit(25)
  end
end
