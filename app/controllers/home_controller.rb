class HomeController < ApplicationController
	
  def index
  	if current_user
  		redirect_to 
  	end
  end
end