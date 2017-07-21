# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed
  def self.begin
    Park.destroy_all
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        park_name: Faker::Name.last_name + ' Park',
        location: Faker::Address.city
      )
    end
  end
end

Seed.begin
