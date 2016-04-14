class AddColumnToEducation < ActiveRecord::Migration[5.0]
  def change
    add_column :educations, :creater_id, :integer, index: true
    add_column :educations, :quota, :integer
  end
end
