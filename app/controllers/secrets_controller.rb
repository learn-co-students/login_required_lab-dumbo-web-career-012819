class SecretsController < ApplicationController

	before_action :require_login

	def show
	 #  if params[:name] == nil || params[:name] == ""
  # 		redirect_to '/sessions/new'
	 #  else
		# session[:name] = params[:name]
	 #  	redirect_to '/secrets/show'
	 #  end
	end

	private

	def require_login
   	 return redirect_to '/sessions/new' unless session.include? :name
  	end
end