class JobsController < ApplicationController
 before_action :set_job, only: [:show, :edit, :update, :destroy]



  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end


  def create
    @job = Job.new(job_params)

    
      if @job.save
        redirect_to jobs_path
     
      else
        render 'new'
     
      end

  end


  def update
   
      if @job.update(job_params)
        redirect_to jobs_path
      else
        render 'edit' 
      end
  end


  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end


  def job_params
    params.require(:job).permit(:name)
  end
end
