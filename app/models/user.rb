class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :exams
  has_many :education_pre_records
<<<<<<< HEAD
  has_many :education, through: :education_pre_records   
  has_one :user_profile   
=======
  has_many :educations, through: :education_pre_records      
>>>>>>> 05eb04e3060e71809b714b08e7b2179ac7f29bdf
end
