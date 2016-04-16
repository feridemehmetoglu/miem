class EducationRecordsController < ApplicationController
  before_action :authenticate_user!
  def show
   education = Education.find(params[:id])
   EducationRecord.create(user_id: current_user.id , education_id: education.id  ) 
   redirect_to root_path  
  end
end
