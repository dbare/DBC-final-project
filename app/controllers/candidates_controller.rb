class CandidatesController < ApplicationController

	def new
		if current_user
			redirect_to candidate_path(current_user)
		else 
			@candidate = Candidate.new
		end 
	end 

	def create
		@candidate = User.new(candidate_params)
		if @candidate.save
			login(@candidate)
			redirect_to candidate_path(@candidate)
		else
			render 'new'
		end 
	end 

	def show
		@candidate = Candidate.find(params[:id])
	end 

	private 
	def candidate_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :photo)
	end 
end 