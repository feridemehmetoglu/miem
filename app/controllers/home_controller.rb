class HomeController < ApplicationController
  def index
    @education=Education.where("start_date >= :start_date", start_date:Date.today).page(params[:page]).per_page(4)
  end
end
