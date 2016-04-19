class Education < ActiveRecord::Base
  has_many :exams
  
  has_many :education_records
  has_many :users, through: :education_records 

  has_many :education_pre_records
 

  has_many :job_educations
  has_many :jobs, through: :job_educations

  validates :name, presence: { message: "'Eğitim Adı' alanı boş bırakılamaz" }
  validates :description, presence: { message: "'Eğitim Açıklama' alanı boş bırakılamaz" }
  validates :purpose, presence: { message: "'Eğitimin Amacı' alanı boş bırakılamaz" }
  validates :location, presence: { message: "'Eğitim Yeri' alanı boş bırakılamaz" }
  validates :fee, presence: { message: "'Eğitim Ücreti' alanı boş bırakılamaz" }
  validates :fee, numericality: true
  validates :exam_fee, presence: { message: "'Eğitim Sınav' alanı boş bırakılamaz" }
  validates :exam_fee, numericality: true
  validates :total_hour, presence: { message: "'Toplam Saat' alanı boş bırakılamaz" }
  validates :total_hour, numericality: true
  validates :quota, presence: { message: "'Eğitim Kontenjan' alanı boş bırakılamaz" }
  validates :quota, numericality: true
 
end
