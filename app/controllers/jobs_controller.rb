class JobsController < ApplicationController

	before_action :find_job, except: [:index, :new, :create]

	def index
		@search = Job.search(params[:q])
		if @search 
			@search.build_condition
			@jobs = @search.result
		else 
			@jobs = Job.all
		end 
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
	end

	def show
		@job = find_job
	end 


	def update
		@job = find_job
		@job.update_attributes(job_params)
		if @job.save
			redirect_to @job
		else
			render :edit
		end 
	end 

	def destroy
		find_job.destroy
		redirect_to jobs_path  
	end 

	private 

	def find_job
		Job.find(params[:id])
	end 

	def job_params
		params.require(:job).permit(:position, :location, :description)
	end  

end
