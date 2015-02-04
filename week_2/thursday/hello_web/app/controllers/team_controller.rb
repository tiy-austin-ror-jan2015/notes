class TeamController < ApplicationController
  def index
  	@team_members = [
  		{ :name => 'John Smith', :title => 'Junior VP', :eotm => true},
  		{ :name => 'Jane Doe',   :title => 'Senior VP', :eotm => false },
  		{ :name => 'Steve Jobs', :title => 'Apple Guy', :eotm => false },
  		{ :name => 'Sam Kapila', :title => 'Design Instructor', :eotm => true}
  	]
  end

  def employee_of_the_month
  end
end
