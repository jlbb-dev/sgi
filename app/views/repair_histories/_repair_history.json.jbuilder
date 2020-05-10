json.extract! repair_history, :id, :date, :pccode, :observation, :area_id, :repair_type_id, :created_at, :updated_at
json.url repair_history_url(repair_history, format: :json)
