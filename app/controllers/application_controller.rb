class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  def hello
    if current_user.nil?
      redirect_to '/sessions/new'
    end
  end


  def current_user
    session[:name]
  end

  def required_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
