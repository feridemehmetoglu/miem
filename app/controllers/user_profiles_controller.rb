class UserProfilesController < ApplicationController
	before_action :authenticate_user!

  def index
  	@user_profiles = UserProfile.all
  	@users= User.all

  end
  def update
  	@user_profile = UserProfile.find(params[:id])
  	if @user_profile.update(user_profile_params)
        redirect_to admins_user_profiles_path
      else
        render 'edit' 
      end
   
  end

  def edit
  	@user= User.find(params[:id])
  	@user_profile = UserProfile.find(params[:id])
  end
  
  private

  def  user_profile_params
  	params.require(:user_profile).permit(:name,:surname,:email,:mobile_phone,:register_no,:user_id,:admin)
  end

end
