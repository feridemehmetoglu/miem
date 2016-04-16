class AddAdminToUserProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :user_profiles, :admin, :boolean
  end
end
