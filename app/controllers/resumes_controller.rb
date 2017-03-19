class ResumesController < ApplicationController
	def show
		@user = User.find(params[:user_id])
		@resume = Resume.new
	end
end