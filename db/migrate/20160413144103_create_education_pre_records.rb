class CreateEducationPreRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :education_pre_records do |t|
      t.references :user, foreign_key: true
      t.references :education, foreign_key: true

      t.timestamps
    end
  end
end
