class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin_user
    @admin_user = User.where(admin: true)
  end

  def parent_user
    @parent_user = User.where(user_type: "parent")
  end

  def player_user
    @player_user = User.where(user_type: "player")
  end

  helper_method :current_user, :admin_user, :parent_user, :player_user
end
