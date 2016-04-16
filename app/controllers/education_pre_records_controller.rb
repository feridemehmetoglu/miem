class EducationPreRecordsController < ApplicationController

	def index
		@all_education = Education.all
		@pre_education = Education.where("finish_date <?", Date.yesterday) #finish_date dün ve daha önce olan tarihdeki eğitimleri getirir
	end


end
