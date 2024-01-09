json.extract! patient, :id, :mrn, :first_name, :last_name, :middle_initial, :date_of_birth, :phone, :email, :deceased, :terminated, :language_id, :sex_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
