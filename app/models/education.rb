class Education < ActiveRecord::Base

  has_many :education_records
  has_many :user, through: :education_records 

  has_many :education_pre_records
  has_many :user, through: :education_pre_records 
end
