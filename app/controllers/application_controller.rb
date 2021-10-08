class ApplicationController < ActionController::Base

  # devise機能が使われる前にactionを実施する
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    post_images_path
  end

  protected

  # before action
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
