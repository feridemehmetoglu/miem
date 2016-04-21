class UserProfilesController < ApplicationController
	before_action :authenticate_user!

  def index
  	@user_profiles = UserProfile.all
  	@users= User.all

  end
  def new

      @user_profile = UserProfile.new

  end

  def create
    @user_profile = UserProfile.new(user_profile_params)
    @user_profile.save
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
    if current_user.user_profile
      @user_profile = UserProfile.find(current_user.user_profile.id)
      redirect_to edit_user_profile_path(@user_profile)
    else
      redirect_to new_user_profile_path
    end
  end
  
  private

  def  user_profile_params
  	params.require(:user_profile).permit(:name,:surname,:email,:mobile_phone,:register_no,:user_id,:admin)
  end

end
