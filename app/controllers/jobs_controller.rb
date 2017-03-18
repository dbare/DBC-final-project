class JobsController < ApplicationController

	before_action :find_job, except: [:index, :new, :create]

	def index
		@jobs = Job.all 
	end

	def new
		@job = Job.new
	end 

	def create
		@job = Job.new(job_params)
		if @job.save
			redirect_to @job 
		else
			render :new
		end 
	end

	def edit
	  find_job
	end

	def show
		find_job
	end 


	def update
		find_job
	end 

	def destroy
		find_job 
	end 

	private 

	def find_job
		@job = @job.find(params[:id])
	end 

	def job_params
		params.require(:job).permit(:position, :location, :description)
	end  

end
