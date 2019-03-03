class SessionsController < ApplicationController

  def new
  end

  def create
  	if params[:name] == nil || params[:name] == ""
  		return redirect_to '/sessions/new'
	end
	session[:name] = params[:name]
	redirect_to '/'
  end

  def destroy
  	session.delete :name
  	redirect_to '/'
  end

end