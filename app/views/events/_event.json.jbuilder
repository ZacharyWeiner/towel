json.extract! event, :id, :date, :time, :title, :description, :cost, :capacity, :city_id, :event_type, :created_at, :updated_at
json.url event_url(event, format: :json)
