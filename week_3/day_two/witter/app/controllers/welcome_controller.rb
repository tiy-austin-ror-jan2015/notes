class WelcomeController < ApplicationController
  def index
  	@wits = Wit.all # Never do this on large (production) applications
  end
end
