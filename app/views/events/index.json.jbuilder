
  json.array! @events do |event|
    json.extract! event, :id, :title, :title, :start, :end
    json.start_date event.start
  json.end_date event.end
  json.url event_url(event, format: :html)
  end
