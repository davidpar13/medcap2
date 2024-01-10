class CreateAssignedStaffTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :assigned_staff_types do |t|
      t.string :type
      t.boolean :active

      t.timestamps
    end
  end
end
