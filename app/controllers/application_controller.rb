class ApplicationController < ActionController::API
  include Knock::Authenticable
  before_action :set_token
  before_action :authenticate_token
  before_action :set_admin

  private

  def set_token
    @token = JsonWebToken.encode(sub: User.last.id)
    session[:token] = @token
  end

  def authenticate_token
    if session[:token].nil?
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end

  def set_admin
    @user = User.find_or_create_by(username:'admin') do |user|
      user.password = 'admin123'
      user.password_confirmation = 'admin123'
      user.email = "admin@admin.com"
    end
  end
end
