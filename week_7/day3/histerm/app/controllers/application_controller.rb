class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def session_not_found
    render(html: "<h1>Session Not Found</h1>".html_safe, layout: true, status: 404)
  end
end
