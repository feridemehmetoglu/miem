class EducationPreRecordsController < ApplicationController

	def index
	
		@pre_education = Education.where("finish_date <=?", Date.yesterday) #finish_date dün ve daha önce olan tarihdeki eğitimleri getirir
	end

	def new
		@pre_record = EducationPreRecord.new
	end

	def show

   education = Education.find(params[:id])
   EducationPreRecord.create(user_id: current_user.id , education_id: education.id  ) 
   redirect_to root_path  
		
	end

   private
   def pre_record
   	params.require(education_pre_record).permit(:user_id,:education_id)
   	
   end

end
