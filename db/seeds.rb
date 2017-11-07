# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Facility.count == 0    
    10.times do |i|        
        facilities = Facility.create!(name: Faker::Address.city)
        3.times do |a|
            FacilityItem.create!(name: Faker::Address.street_name, facility_id: facilities.id)
        end           
    end   
end