json.extract! appointment, :id, :date, :time, :purpose, :notes, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
