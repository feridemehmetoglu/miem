class Job < ApplicationRecord

	has_many :job_educations
	has_many :educations, through: :job_educations
end
