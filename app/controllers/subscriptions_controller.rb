class SubscriptionsController < ApplicationController
  def create
 	puts ("inside create")
	@subscription = Subscription.new(params[:subInfo])
  end
  
  def new
	puts ("inside new")
	@subscription = Subscription.new(params[:subscription])
	@subscription.save
	
  end
  
 
   def viewall
    @subscriptions = Subscription.all

	puts("COUNT : "  + Subscription.count.to_s)
	
    respond_to do |format|
      format.html # viewall.html.erb
      format.json { render json: @subscriptions }
    end
  end
  
  
  
end
