class UsersController < ApplicationController

	def new
		@user = User.new
		@companies = Company.all
		@user_type = params[:user_type]
	end

	def create
		@user = User.new(user_params)
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
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :company_id)
  end

end