# This migration comes from city_select (originally 20170608085336)
class CreateCountriesRegionsAndCities < ActiveRecord::Migration
  def change
    create_table :city_select_countries do |t|
      t.string :iso_code, index: { unique: true }
      t.string :name_en, index: { unique: true }
      t.string :name_ru, index: { unique: true }
    end
    
    create_table :city_select_regions do |t|
      t.references :country
      t.string :iso_code
      t.string :name_en
      t.string :name_ru
    end
    
    create_table :city_select_cities do |t|
      t.references :country
      t.references :region
      t.string :name_en
      t.string :name_ru
      t.string :geoname_id
    end
    
    add_index :city_select_regions, [:country_id, :name_en], unique: true
    add_index :city_select_cities, [:region_id, :name_en], unique: true
  end
end
