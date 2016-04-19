class EducationsController < ApplicationController
 before_action :set_education, only: [:show, :edit, :update, :destroy]
 #before_action :authenticate_user!
 
  def index
    @educations = Education.all
  end

  def show
  end

  def new
    @education = Education.new
    @jobs =Job.all
  end

  def edit
  end

  def create
   
    @education = Education.new(education_params)
    @jobs =Job.all
      
      if @education.save
          education = Education.last
          jobeducation = params.require(:job_ids) 
            unless jobeducation == nil
             jobeducation.each do |job_id|
             JobEducation.create(job_id: job_id, education_id: education.id)
            end
          end
        
       redirect_to education_path(@education) , notice: "Eğitim başarı ile oluşturuldu."
      else
       redirect_to new_education_path, notice: "Eksik Veya Yanlış Giriş Egitimi oluşturulamadı.  " 
     
      end

  end


  def update
   
      if @education.update(education_params)
        redirect_to educations_path
      else
        render 'edit' 
      end
  end


  def destroy
    @education.destroy
     
  end

  private

  def set_education
    @education = Education.find(params[:id])
  end


  def education_params
    params.require(:education).permit(:name,
      :description,
      :purpose,
      :location,
      :fee,
      :exam_fee,
      :start_date,
      :finish_date,
      :total_hour,
      :send_email,
      :creater_id,
      :quota)
   
  end
   end


