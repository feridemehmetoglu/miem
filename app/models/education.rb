class Education < ActiveRecord::Base
  has_many :exams
  
  has_many :education_records
  has_many :users, through: :education_records 

  has_many :education_pre_records
 

  has_many :job_educations
  has_many :jobs, through: :job_educations

end
