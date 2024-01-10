class Patient < ApplicationRecord
  belongs_to :language
  belongs_to :sex
  has_many :legal_guardians
  has_many :admissions

  accepts_nested_attributes_for :legal_guardians, reject_if: :all_blank, allow_destroy: true

  validate :middle_initial_length

  delegate :language_name, to: :language
  delegate :sex_name, to: :sex


  def middle_initial_length
    errors.add(:middle_initial, 'must be one character long.') if self.middle_initial.length > 1
  end
end
