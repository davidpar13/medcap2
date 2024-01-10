class AddPatientToAdmissions < ActiveRecord::Migration[7.1]
  def change
    add_reference :admissions, :patient, null: false, foreign_key:true
  end
end
