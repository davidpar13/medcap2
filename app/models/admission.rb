class Admission < ApplicationRecord
  belongs_to :diagnosis
  belongs_to :assigned_staff
  belongs_to :patient
end
