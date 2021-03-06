class SubscriptionsController < ApplicationController
 
 
  def new
	puts ("inside new")
	@subscription = Subscription.new(params[:subscription])
	@subscription.save
  end
  
  def index 
  
  @subscription = Subscription.new
   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subscription }
    end
  end

  
 
   def viewall
    @subscriptions = Subscription.all

	puts("COUNT : "  + Subscription.count.to_s)
	
    respond_to do |format|
      format.html # viewall.html.erb
      format.json { render json: @subscriptions }
    end
  end
  
  def sendmail_last
	@sub = Subscription.last
	
	puts("sending mail to : " + @sub.useremail)
	
	UserMailer.welcome_email(@sub).deliver
	
	puts("have sent mail ...")
  end
  
end
