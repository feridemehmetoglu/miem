class Exam < ApplicationRecord
  belongs_to :education
  belongs_to :user
  has_many :certificate
end
