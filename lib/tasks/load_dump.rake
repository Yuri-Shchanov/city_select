namespace :city_select do
  desc "load countries, regions and cities from city_select.sql to DB"
  task load_dump: :environment do
    file = File.join(CitySelect::Engine.root, 'lib', 'city_select.sql')
    ActiveRecord::Base.connection.execute(IO.read(file))
    p "Records has been copied to DB"
  end
end
