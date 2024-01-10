class CreateAdmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :admissions do |t|
      t.date :admitted_date
      t.text :notes
      t.date :discharge_date
      t.references :diagnosis, null: false, foreign_key: true
      t.references :assigned_staff, null: false, foreign_key: true

      t.timestamps
    end
  end
end
