class CompaniesController < ApplicationController

	def new
		if current_user
			redirect_to company_path(current_user)
		else 
			@company = Company.new
		end 
	end 

	def create
		@company = Company.new(company_params)
		if @company.save
			login(@company)
			redirect_to company_path(@company)
		else
			render 'new'
		end 
	end 

	def show
		@company = Company.find(params[:id])
	end 

	private 
	def company_params
		params.require(:company).permit(:name, :email, :password, :location, :logo)
	end 
end 