class AssignedStaff < ApplicationRecord
  belongs_to :assigned_staff_type
  has_many :admissions
end
