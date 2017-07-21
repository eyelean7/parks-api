FactoryGirl.define do
  factory(:park) do
    park_name(Faker::Name.last_name + ' Park')
    location(Faker::Address.city)
  end
end
