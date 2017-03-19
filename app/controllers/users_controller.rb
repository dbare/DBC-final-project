class UsersController < ApplicationController
	
	before_action :require_valid_user, only: [:index]

	def index
		@boots = User.where(company_id: nil)
		render 'boots_index'
	end

	def new
		@user = User.new
		@companies = Company.all
		@user_type = params[:user_type]
	end

	def create
		@user = User.new(user_params)
		@companies = Company.all
		@token = Token.find_by(characters: params[:user][:unique_token])

		if @token && @token.used? == false && @user.save
			@token.update_attribute(:user_id, @user.id)
			
			if @token.admin_token
				@user.update_attribute(:admin_status, true)
			end
			
			login
			redirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@profile = @user.profile
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :photo, :company_id)
	end

end