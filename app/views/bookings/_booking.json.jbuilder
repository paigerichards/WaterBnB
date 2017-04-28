json.extract! booking, :id, :guest_id, :listing_id, :check_in_at, :check_out_at, :guest_count, :stripe_charge_id, :special_requirement, :created_at, :updated_at
json.url booking_url(booking, format: :json)
