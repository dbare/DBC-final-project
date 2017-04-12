class UsersController < ApplicationController
	before_action :require_valid_user, only: [:index]
	impressionist actions: [:show] #, unique: [:user_id]

	def index
		@boots = User.where(company_id: nil)
		@search = @boots.ransack(params[:q])
		if @search
			@boots = @search.result
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
		p user_params
		@token = Token.find_by(characters: params[:user][:unique_token]) 
		if @token && @token.used? == false && @user.save
			@user.update_attributes(:company_id => @token.company_id, :admin_status => @token.admin_status)
			@token.update_attribute(:user_id, @user.id)
			UserMailer.welcome_email(@user).deliver
			login
			redirect_to user_path(@user)
		else
			flash[:user_notice_1] = "User has attempted to register an email already in use." if User.find_by(email: params[:user][:email]) != nil
			flash[:user_notice_2] = "User has entered an invalid token." if @token == nil
			flash[:user_notice_3] = "User has entered an expired token (already in use)." if @token && @token.used? == true
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@links = @user.links

		if @user.photo == nil
			@user.update_attribute(photo: "https://www.soundstream.tv/assets/default_profile-e08597880fc222202f22984a4f1966a29b108e856a3fb935072bfbbc302a4b73.png") 
		end
		@profile = @user.profile
		@uploads = @user.uploads
		@resume = Resume.new
		@resume1 = @user.resume
		@impressions = Impression.where(user_id: current_user.id)
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :photo, :company_id, :unique_token)
	end

end
