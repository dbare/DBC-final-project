class ProfilesController < ApplicationController

	before_action :require_valid_user
	
	def new
		@profile = Profile.new
	end

	def create
		
	end

end
