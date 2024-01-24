class Admission < ApplicationRecord
  belongs_to :diagnosis
  belongs_to :assigned_staff
  belongs_to :patient

  validates :admitted_date, presence: true

  scope :active_admissions, -> { where.not(admitted_date: nil).where(discharge_date: [nil, ""]) }

end
