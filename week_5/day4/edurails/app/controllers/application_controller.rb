class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_last_company

  def set_last_company
    @last_company = Company.find(cookies.fetch(:last_company_id)) unless cookies[:last_company_id].nil?
  end

end
