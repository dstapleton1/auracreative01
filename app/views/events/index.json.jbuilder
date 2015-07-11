json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :location, :starts, :ends, :slug, :user_id, :business_profile_id, :image, :contact_number, :event_link
  json.url event_url(event, format: :json)
end
