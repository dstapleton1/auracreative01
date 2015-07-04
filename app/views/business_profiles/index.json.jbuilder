json.array!(@business_profiles) do |business_profile|
  json.extract! business_profile, :id, :name, :logo, :description, :head_count, :website_link
  json.url business_profile_url(business_profile, format: :json)
end
