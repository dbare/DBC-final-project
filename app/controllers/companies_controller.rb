class CompaniesController < ApplicationController

	before_action :require_valid_user
	
	def index
		@companies = Company.all
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params)
		if @company.save
			redirect_to root_path
		else
			@errors = @company.errors.full_messages
			flash[:notice] = "Unsuccesful submit"
			render 'new'
		end
	end

	def show
		@company = Company.find(params[:id])

		@full_time_jobs = @company.jobs.where(job_type: 'full-time')
		@part_time_jobs = @company.jobs.where(job_type: 'part-time')
		@internships = @company.jobs.where(job_type: 'internship')
		@freelance_jobs = @company.jobs.where(job_type: 'freelance')
	end

	private

	def company_params
		params.require(:company).permit(:name, :location, :email, :photo)
	end
end