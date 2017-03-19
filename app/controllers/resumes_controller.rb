class ResumesController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@resume = Resume.new
	end

	def create
		@user = User.find(params[:user_id])
		@resume = Resume.new(resume_params)
		p "*" * 50
		p resume_params[:attachment]
		p "*" * 50
		if @resume.save
			render 'show'
		else
			@errors = @resume.errors.full_messages
			p "-" * 100
			p @resume 
			p "-" * 100
			flash[:notice] = "Unsuccesful submit"
			render 'new'
		end
	end
	
	def show
		@user = current_user
		@resume = Resume.new
	end

	private

	def resume_params
		params.require(:resume).permit(:user_id, :attachment)
	end	
end