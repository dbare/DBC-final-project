class EvaluationsController < ApplicationController

	def new
	end 

	def create
		@user = User.find(params[:user_id])
		@evaluation = Evaluation.new(evaluation_params)
		if @evaluation.save
			@evaluation.update_attributes(author_id: current_user.id, subject_id: @user.id )
			redirect_to @user
		else
			render 'users/show'
		end 
	end

	private 

	def evaluation_params
		params.require(:evaluation).permit(:rating, :review)
	end 

end 