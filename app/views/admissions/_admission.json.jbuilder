json.extract! admission, :id, :admitted_date, :notes, :discharge_date, :diagnosis_id, :assigned_staff_id, :created_at, :updated_at
json.url admission_url(admission, format: :json)
