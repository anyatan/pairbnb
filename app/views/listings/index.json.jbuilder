json.array!(@listings) do |listing|
  json.extract! listing, :id, :listing, :title, :description, :location
  json.url listing_url(listing, format: :json)
end
