class HashtagController < ApplicationController
	before_action :signed_in_user, only: :index

   def index
    if params[:tag].empty?
      redirect_to root_url
    else
    	  tag = params[:tag]
	      @micropost  = current_user.microposts.build
	      flash[:success]="Results for <span style='font-size:16px'><strong>##{tag}</strong></span>"
	      @feed_items = Micropost.where("content like ?", "%##{tag}%" ).paginate(page: params[:page])      
  	end
   end

end
