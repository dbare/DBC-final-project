class ProfilesController < ApplicationController

	before_action :require_valid_user
	
	def new
		# @profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)
		if @profile.save

		else

		end

	end


private

def profile_params
	params.require(:profile).permit(:location, :objective, :summary, :user_id)
end

end
