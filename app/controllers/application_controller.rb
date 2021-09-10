class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name_chinese_characters, :first_name_chinese_characters, :last_name_katakana, :first_name_katakana, :birthday])
  end
end
