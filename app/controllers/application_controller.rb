class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  #http://stackoverflow.com/questions/37341967/rails-5-undefined-method-for-for-devise-on-line-devise-parameter-sanitizer
  #updated on devise 4
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :name
  #   devise_parameter_sanitizer.for(:account_update) << :name
  # end
end
