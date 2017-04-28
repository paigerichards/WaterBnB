json.extract! listing, :id, :host_id, :price, :long, :lat, :address, :city, :state, :country_code, :max_guests, :rooms, :beds, :shared, :min_nights, :description, :created_at, :updated_at
json.url listing_url(listing, format: :json)
