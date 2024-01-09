class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :mrn
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.date :date_of_birth
      t.string :phone
      t.string :email
      t.boolean :deceased
      t.boolean :terminated
      t.references :language, null: false, foreign_key: true
      t.references :sex, null: false, foreign_key: true

      t.timestamps
    end
  end
end
