class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def greeting
    render text: "Welcome to the Real Estate Investment Property Comparison Application.......Under Construction, please come back shortly."
  end
end
