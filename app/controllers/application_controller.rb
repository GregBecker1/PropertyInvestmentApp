class ApplicationController < ActionController::Base
  
  # Application_controller for Investment_Properties_Comparison_App
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def greeting
    render text: "Welcome to the Real Estate Investment Property Comparison."
  end
end
