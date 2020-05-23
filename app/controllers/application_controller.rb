class ApplicationController < ActionController::Base
  before_action :basic_auth

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      #動作確認のため、仮置き
      username == 'username' && password == 'password'
    end
  end
end
