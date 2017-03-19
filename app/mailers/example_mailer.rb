class ExampleMailer < ActionMailer::Base
	default from: "codeconnectgroup@gmail.com"


  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end