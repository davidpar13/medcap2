json.extract! diagnosis, :id, :code, :title, :display, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)
