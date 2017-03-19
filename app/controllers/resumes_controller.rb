class ResumesController < ApplicationController

	def create
		@resume = Resume.new(params[:resume_params])
		if @resume.save
			redirect_to root_path
		else
			flash[:notice] = "Unsuccesful submit"
			render 'show'
		end
	end
	
	def show
		@user = User.find(params[:user_id])
		@resume = Resume.new
	end

	private

	def resume_params
		params.require(:resume).permit(:file)
	end	
end