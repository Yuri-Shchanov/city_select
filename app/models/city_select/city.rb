class CitySelect::City < ActiveRecord::Base
  belongs_to :country
  belongs_to :region
end