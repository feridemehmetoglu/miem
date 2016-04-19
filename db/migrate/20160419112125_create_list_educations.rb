class CreateListEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :list_educations do |t|
      t.string :name

      t.timestamps
    end
  end
end
