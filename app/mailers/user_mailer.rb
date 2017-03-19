class UserMailer < ApplicationMailer
	default from: "codeconnectgroup@gmail.com"

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Welcome To Code Connect')
	end 
end
