json.extract! patient, :id, :name, :birth_date, :created_at, :updated_at
json.url patient_url(patient, format: :json)
