class SessionsController < ApplicationController

	def new
	end

	def create

		@candidate = Candidate.find_by(email: params[:email])

		if @candidate
			if @candidate.authenticate(params[:password])
				login(@candidate)
				redirect_to candidate_path(@candidate)
			else
				render 'new'
			end
		else

			@company = Company.find_by(email: params[:email])
			if @company
				if @company.authenticate(params[:password])
					login(@company)
					redirect_to company_path(@company)
				else
					render 'new'
				end
			end

		end 
	end


	def destroy
		logout
		redirect_to root_path
	end
end 