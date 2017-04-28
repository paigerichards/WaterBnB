class Listing < ApplicationRecord
  belongs_to :host, class_name: 'User'

  def full_address
    [address, city, state].join(', ')
  end

  def country
    ISO3166::Country.new(country_code)
  end

  def country_code_upper
    country_code.upcase
  end
end
