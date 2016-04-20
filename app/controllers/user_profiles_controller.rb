class UserProfilesController < ApplicationController
	before_action :authenticate_user!

  def index
  	@user_profiles = UserProfile.all
  	@users= User.all

  end
  def new
    @user = User.find(current_user.id)
    @userprofile = UserProfile.where(user_id: @user.id)

    unless @userprofile.any? #userprofile yoksa
      @userprofile = UserProfile.new

       else 
        redirect_to edit_user_profile_path(@userprofile)
      end
  end

  def create
    @userprofile = UserProfile.new(user_profile_params)
    @userprofile.save
    redirect_to root_path

    
  end

  def show
    @user = User.find(current_user.id)
    @user_profile = UserProfile.find_by(user_id: @user.id)

  end


  def update
  	@user_profile = UserProfile.find(params[:id])
  	if @user_profile.update(user_profile_params)
        redirect_to user_profile_path
      else
        render 'edit'
      end
  end

  def edit

      @user_profile = UserProfile.find(params[:id])

  end

  def my_profile
     @user_profile = UserProfile.find(current_user.user_profile.id)
     redirect_to  user_profile_path(@user_profile)
  end
  
  private

  def  user_profile_params
  	params.require(:user_profile).permit(:name,:surname,:email,:mobile_phone,:register_no,:user_id,:admin)
  end

end
