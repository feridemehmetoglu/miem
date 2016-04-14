class CreateCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :certificates do |t|
      t.string :name
      t.date :validity_date
      t.date :cert_date
      t.references :exam,foreign_key: true ,index: true
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
