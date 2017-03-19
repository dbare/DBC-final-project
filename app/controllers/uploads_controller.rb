class UploadsController < ApplicationController

	def new
    @user = User.find(params[:user_id])
    @upload = Upload.new
	end

	def create
		@user = User.find(params[:user_id])
		@upload = Upload.new(upload_params)
		if @upload.save
      @upload.update_attributes(user_id: @user.id )
			redirect_to @user
		else
			render 'users/show'
		end
	end

	private

	def upload_params
		params.require(:upload).permit(:photo, :title, :destination_url, :user_id)
	end
end
