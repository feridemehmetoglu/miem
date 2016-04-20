class EducationPreRecordsController < ApplicationController

	def index
		@pre_education = Education.where("finish_date <=?", Date.yesterday) #finish_date dün ve daha önce olan tarihdeki eğitimleri getirir
	end

	def show
      if user_signed_in?

           @pre = Education.find(params[:id])
            if EducationPreRecord.create(user_id: current_user.id , education_id: @pre.id  ) 
            redirect_to education_pre_records_path , notice: "Önkaydınız yapılmıştır!"
            end
      else
             redirect_to user_session_path
      end
	end

   private

   def pre_record
   	params.require(education_pre_record).permit(:user_id,:education_id)
   end

end
