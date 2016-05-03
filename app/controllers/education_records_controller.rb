class EducationRecordsController < ApplicationController
  before_action :authenticate_user!
  def show
  	 education = Education.find(params[:id])
  
           if EducationRecord.exists?(user_id: current_user.id , education_id: education.id  )
           	  redirect_to request.referer ,notice: "Eğitime Zaten Kayıtlısınız."
           	else
           		EducationRecord.create(user_id: current_user.id , education_id: education.id  ) 
		        redirect_to root_path  ,notice: "Kaydınız başarılı bir şekilde oluşturuldu."
           end
     	  
		   
  end
end
