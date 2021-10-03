class ApplicationController < ActionController::Base
  
  # devise機能が使われる前にactionを実施する
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  # before action
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
end
