class LegalGuardian < ApplicationRecord
  belongs_to :relationship
  belongs_to :patient

  delegate :relationship_type, to: :relationship

end
