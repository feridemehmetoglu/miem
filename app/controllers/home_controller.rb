class HomeController < ApplicationController
  def index
    @education=Education.where("start_date >= :start_date", start_date:Date.today)
  end
end
