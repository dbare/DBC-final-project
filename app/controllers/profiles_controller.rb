class ProfilesController < ApplicationController

	before_action :require_valid_user
	
	def new
		@profile = Profile.new
		@user = current_user
	end

	def create
		# @user = current_user
		@profile = Profile.new(profile_params)
		if @profile.save
			@profile.update_attribute(:user_id, current_user.id)
			redirect_to user_path(current_user)
		else
			p "*" * 100
			p "NOPE"
			p "*" * 100
			render 'new'
		end
	end

	def edit
		@profile = Profile.find(params[:id])
	end

	def update
		@profile = Profile.find(params[:id])
		if @profile.update(profile_params)
			p "*" * 100
			p "PRESERVED"
			p "*" * 100

			redirect_to user_path(@profile.user)
		else
			p "*" * 100
			p "NOOOOOOOOO"
			p "*" * 100
			render 'edit'
		end


	end


private

def profile_params
	params.require(:profile).permit(:location, :objective, :summary, :user_id)
end

end
