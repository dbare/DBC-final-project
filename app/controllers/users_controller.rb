class UsersController < ApplicationController
	before_action :require_valid_user, only: [:index]

	def index
		@search = User.search(params[:q])
		if @search
			@search.build_condition
			@boots = @search.result
		else
			@boots = User.where(company_id: nil)
		end
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
		p "BEFORE SAVE LINE"
		if @token && @token.used? == false && @user.save
			@token.update_attribute(:user_id, @user.id)

			if @token.admin_token
				@user.update_attribute(:admin_status, true)
			end

			UserMailer.welcome_email(@user).deliver
			p "AFTER EMAIL LINE"
			login
			redirect_to @user
		else
			p "ELSE"
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@links = @user.links
		@profile = @user.profile
		@uploads = @user.uploads
		@resume = Resume.new

	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :photo, :company_id)
	end

end
