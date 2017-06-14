class CitySelect::Country < ActiveRecord::Base
  has_many :regions
  has_many :cities
  
  def self.get locale
    select("name_#{locale} AS name, id")
  end
end