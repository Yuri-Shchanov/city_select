class CitySelect::Region < ActiveRecord::Base
  belongs_to :country
  has_many :cities
  
  def self.get country_id, locale
    return nil unless country = CitySelect::Country.find_by(id: country_id)
    country.regions.select("name_#{locale} AS name, id")
  end
end