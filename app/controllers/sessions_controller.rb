class SessionsController < ApplicationController

  def new
  end

  def show
  end

  def create
    # byebug
    if params[:name].nil? || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to 'application#hello'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello' 
  end

end


# SessionsController
#   create
#     redirects to login page if :name is nil (FAILED - 5)
#     redirects to login page if :name is empty (FAILED - 6)
#     sets session[:name] if :name was given (FAILED - 7)
#   destroy
#     leaves session[:name] nil if it was not set (FAILED - 8)
#     clears session[:name] if it was set (FAILED - 9)
#
