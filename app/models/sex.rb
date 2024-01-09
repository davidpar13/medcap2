class Sex < ApplicationRecord

  after_initialize do
    if self.new_record? && self.active.nil?
      self.active = true
    end
  end

end
