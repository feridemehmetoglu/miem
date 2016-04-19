class EducationPreRecord < ApplicationRecord

  belongs_to :education
  
  validates_uniqueness_of :user_id, scope: :education_id
  
end
