class CreateLegalGuardians < ActiveRecord::Migration[7.1]
  def change
    create_table :legal_guardians do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.date :date_of_birth
      t.string :phone
      t.string :email
      t.references :relationship, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
