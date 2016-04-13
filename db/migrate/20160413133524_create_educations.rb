class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :description
      t.string :purpose
      t.string :location
      t.integer :fee
      t.integer :exam_fee
      t.date :start_date
      t.date :finish_date
      t.integer :total_hour
      t.boolean :send_email

      t.timestamps
    end
  end
end
