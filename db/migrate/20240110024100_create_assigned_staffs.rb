class CreateAssignedStaffs < ActiveRecord::Migration[7.1]
  def change
    create_table :assigned_staffs do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :active
      t.references :assigned_staff_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
