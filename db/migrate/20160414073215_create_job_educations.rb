class CreateJobEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :job_educations do |t|
      t.references :job, foreign_key: true
      t.references :education, foreign_key: true

      t.timestamps
    end
  end
end
