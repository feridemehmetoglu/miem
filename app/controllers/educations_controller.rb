class EducationsController < ApplicationController
 before_action :authenticate_user!
 
 if current_user.admin? 
  def index

  end

  def create

    
  end

  def new
     @education = Education.new
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
