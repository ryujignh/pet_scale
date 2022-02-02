# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  user = User.create(username: "test user", email: "test@test.com", password: "password")
  pet_type = PetType.create(name: "Cat")
  pet = user.pets.create(name: "Goma", pet_type_id: pet_type.id)
  weight_records = 10.times do |i|
    pet.weight_records.create(
      weight: rand(2560..3200),
      recorded_on: Date.today + i
    )
  end
end