require 'open-uri'
class ProfileController < ApplicationController
  before_action :set_data, only: [:index, :show] 

  def index
  end

  def show
  end

  def set_data
  	if params[:username]
  		username = params[:username]
  	else
  		username = 'jah2488'
  	end
  	profile_response = open(profile_url(username)).read
    repos_response   = open(repos_url(username)).read
    @profile_data = JSON.parse(profile_response)
    @repos_data   = JSON.parse(repos_response)
    @name = @profile_data['name']
  end

  private

  def profile_url(name)
  	"https://api.github.com/users/#{name}"
  end

  def repos_url(name)
  	"https://api.github.com/users/#{name}/repos?sort=updated"
  end
end