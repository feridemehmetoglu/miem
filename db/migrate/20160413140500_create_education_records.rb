class CreateEducationRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :education_records do |t|
      t.references :user, foreign_key: true ,index: true 
      t.references :education, foreign_key: true ,index: true 

      t.timestamps
    end
  end
end
