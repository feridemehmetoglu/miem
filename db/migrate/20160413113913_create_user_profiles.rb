class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :mobile_phone
      t.string :register_no

      t.timestamps null: false
    end
  end
end
