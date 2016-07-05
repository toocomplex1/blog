class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
  #http_basic_authenticate_with name: "akash", password: "secret", except: [:index, :show]

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #for authentication
  before_action :authenticate_user!
  
  #include the controller methods for CanCan:
  include CanCan::ControllerAdditions

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Not allowed to do this."
    redirect_to root_url
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(  :email, :password, :password_confirmation, :poster, roles: [] ) }
  end
end
