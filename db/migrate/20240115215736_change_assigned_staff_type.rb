class ChangeAssignedStaffType < ActiveRecord::Migration[7.1]
  def change
    rename_column :assigned_staff_types, :type, :staff_type
  end
end
