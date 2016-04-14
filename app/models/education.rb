class Education < ActiveRecord::Base
  has_many :exams
  
  has_many :education_records
  has_many :user, through: :education_records 

  has_many :education_pre_records
  has_many :user, through: :education_pre_records 

  has_many :job_educations
  has_many :job, through: :job_educations

end
