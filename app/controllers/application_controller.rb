class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :basic_auth
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :phone_number])
  end

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      #動作確認のため、仮置き
      username == 'username' && password == 'password'
    end
  end
end
