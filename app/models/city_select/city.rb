class CitySelect::City < ActiveRecord::Base
  belongs_to :country
  belongs_to :region
  
  def self.get region_id, locale
    return nil unless region = CitySelect::Region.find_by(id: region_id)
    region.cities.select("name_#{locale} AS name, id")
  end
end