class AdminsController < ApplicationController
	before_action :authenticate_user!

  def dashboard
  	
  end

  def user_profiles
  	@user_profiles = UserProfile.all
  end
 def method_name
 	
 end
 end
