class FavoritesController < ApplicationController
	
	def new
		@favorite = Favorite.new
	end

	def create
		@job = Job.find(params[:favorite][:job_id])
		@user = User.find(params[:favorite][:user_id])
		@favorite = Favorite.new(favorite_params)
		if @favorite.save
			redirect_to @job
		else
			redirect_to @job
		end
	end

	def destroy
		@favorite = Favorite.find(params[:id])
		@job = @favorite.job
		@favorite.destroy
		redirect_to job_path(@job)
	end

	private

	def favorite_params
		params.require(:favorite).permit(:user_id, :job_id)
	end

end
