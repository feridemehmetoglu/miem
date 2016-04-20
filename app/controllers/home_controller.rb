class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
    @education=Education.where("start_date >= :start_date", start_date:Date.today).page(params[:page]).per_page(4)
  end
end
