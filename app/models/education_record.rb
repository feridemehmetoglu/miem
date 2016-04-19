class EducationRecord < ApplicationRecord
  belongs_to :user
  belongs_to :education

  validates_uniqueness_of :user_id, scope: :education_id
  
end
