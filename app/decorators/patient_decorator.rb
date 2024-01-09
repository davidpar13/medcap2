class PatientDecorator < Draper::Decorator
  delegate_all
  decorates_association :legal_guardians

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def full_name
    "#{self.first_name} #{self.middle_initial if self.middle_initial.present?} #{self.last_name}"
  end

  def humanized_dob
    self.date_of_birth&.strftime('%b %d, %Y') || ''
  end

  def humanized_deceased
    self.deceased ? "Yes" : "No"
  end

  def humanized_terminated
    self.terminated ? "Yes" : "No"
  end

  # %w[date_of_birth].each do |attr|
  #   define_method(attr) { instance_variable_set("@_#{attr}", (self[attr].presence&.strftime('%b %d, %Y') || '')) }
  # end

end
