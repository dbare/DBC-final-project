class UploadsController < ApplicationController
	before_action :require_valid_user

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

	def edit
		@user = User.find(params[:user_id])
		@upload = Upload.find(params[:id])
	end

	def update
		@upload = Upload.find(params[:id])
		if @upload.update(upload_params)
			redirect_to user_path(@upload.user)
		else
			render 'edit'
		end
	end

	def destroy
		@upload = Upload.find(params[:id])
		@user = @upload.user
		@upload.destroy
		redirect_to user_path(@user)
	end

	private

	def upload_params
		params.require(:upload).permit(:photo, :title, :destination_url, :user_id)
	end
end
