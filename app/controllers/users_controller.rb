class UsersController < ApplicationController

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
			login
			redirect_to @user
		else
			
			# if @user.company_id != nil
			# 	render "new", locals: {:@user_type => HR}
			# else
			# 	render 'new'
			# end

			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@profile = @user.profile
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :company_id)
  end

end