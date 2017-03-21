class JobsController < ApplicationController
	before_action :require_valid_user
	before_action :require_company_rep, except: [:index, :show, :destroy]
	impressionist actions: [:show] #, unique: [:session_hash]

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
		@job.company = current_user.company
		if @job.save
			redirect_to @job
		else
			render :new
		end
	end

	def edit
		@job = Job.find(params[:id])
	end

	def show
		@job = Job.find(params[:id])
		@company = Company.find(params[:id])
		@user = current_user
		@favorite = Favorite.new
		@favorited = current_user.favorite_jobs.include?(@job)
		@user_favorite = current_user.favorites.find_by(job_id: @job.id)
	end

	def update
		@job = Job.find(params[:id])
		@job.update_attributes(job_params)
		if @job.save
			redirect_to @job
		else
			render :edit
		end
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to jobs_path
	end

	private 

	def job_params
		params.require(:job).permit(:position, :location, :description)
	end

end
