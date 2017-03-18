class CompaniesController < ApplicationController

	before_action :require_valid_user
	
	def index
		@companies = Company.all
	end

	def show
		@company = Company.find(params[:id])
	end
end