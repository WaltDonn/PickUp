class AuthController < ApplicationController
	def show
		render template: "auth/#{params[:page]}"
	end
end  