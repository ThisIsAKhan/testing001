class UserMailer < ActionMailer::Base
  default from: "sadi@clothera.com"
  
  def welcome_email(subscription)
	@sub = subscription
	@url = "http://173.230.157.65/"
	mail(:to => subscription.useremail, :subject => "Welcome")
  end
end
