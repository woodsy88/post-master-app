json.extract! event, :id, :user_id, :action, :eventable_id, :eventable_type, :created_at, :updated_at
json.url event_url(event, format: :json)
