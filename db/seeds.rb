# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




50.times do
    Client.create(
        code: Faker::Number.number(digits: 6),
        name: Faker::Company.name,
        address: Faker::Address.full_address
    )
end

50.times do
    Product.create(
        name: Faker::Commerce.product_name,
        description: Faker::Lorem.paragraph,
        minutes: rand(6...24) * 30,
        online: Faker::Boolean.boolean
    )
end