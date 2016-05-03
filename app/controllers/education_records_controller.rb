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

 def cancel
  education = Education.find(params[:id])
  education_record = EducationRecord.where(user_id: current_user.id, education_id: education.id)

  education_record.each do |e|
    if e.destroy
      redirect_to my_educations_path, notice: "Kaydınız İptal Edildi"
    else

      redirect_to my_educations_path, notice: "İptal Başarısız"
    end
  end
end

private

def educationrecord_params
  params.require(:education_record).permit(:user_id,:education_id)

end
end
