class AdminsController < ApplicationController
	before_action :authenticate_user!
  def index
  	
  end
  def admin_assign
  	@user_profiles = UserProfile.all
  end
end
