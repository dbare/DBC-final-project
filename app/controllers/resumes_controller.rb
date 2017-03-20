class ResumesController < ApplicationController

	def new
    	@user = User.find(params[:user_id])
    	@resume = Resume.new
	end

	def create
		@user = User.find(params[:user_id])
		@resume = Resume.new(resume_params)
		if @resume.save
     		@resume.update_attributes(user_id: @user.id )
			render 'show'
		else
			@errors = @resume.errors.full_messages
			flash[:notice] = "Unsuccesful submit"
			render 'new'
		end
	end

	def show
		@user = current_user
		@resume = @user.resume
	end

	private

	def resume_params
		params.require(:resume).permit(:content, :user_id)
	end
end
