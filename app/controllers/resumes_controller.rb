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
			redirect_to @user
		else
			render 'users/show'
		end
	end

	private

	def resume_params
		params.require(:resume).permit(:content, :user_id)
	end
end
