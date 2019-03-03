class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login, only: [:welcome]

  def welcome

  end

  def current_user
  	session[:name]
  end

  private

	def require_login
   	 return redirect_to '/sessions/new' unless current_user
  	end
end
