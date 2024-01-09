json.extract! legal_guardian, :id, :first_name, :last_name, :middle_initial, :date_of_birth, :phone, :email, :relationship_id, :patient_id, :created_at, :updated_at
json.url legal_guardian_url(legal_guardian, format: :json)
