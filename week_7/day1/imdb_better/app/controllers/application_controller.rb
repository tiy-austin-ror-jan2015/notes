require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html





  def authorized!(attr_to_check = params[:user_id].to_i)
    return if current_user.admin?
    if current_user.id != attr_to_check
      flash[:alert] = "You are not authorized to see that page. We have told the authorities."
      redirect_to root_path
    end
  end










  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
end