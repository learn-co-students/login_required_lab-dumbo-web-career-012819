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

end