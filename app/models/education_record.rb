class EducationRecord < ApplicationRecord
  belongs_to :user
  belongs_to :education
  
end