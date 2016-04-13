class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.date :exam_date
      t.string :result
      t.references :education, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
