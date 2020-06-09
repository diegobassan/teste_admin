# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DEFAULT_PASSWORD = 123456

User.create!(
    email: 'admin@admin.com',
    password: DEFAULT_PASSWORD,
    password_confirmation: DEFAULT_PASSWORD
  )

10.times do |i|
    User.create!(
      email: Faker::Internet.email,
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

50.times do
    Client.create!(
        code: Faker::Number.number(digits: 6),
        name: Faker::Company.name,
        address: Faker::Address.full_address
    )
end

rand(4..8).times do
    group = Group.new(
        name: Faker::Commerce.product_name,
        description: Faker::Lorem.paragraph
    )

    products = []

    rand(5..10).times do
        product = Product.new(
            name: Faker::Commerce.product_name,
            description: Faker::Lorem.paragraph,
            minutes: rand(6...24) * 30,
            online: Faker::Boolean.boolean
        )

        number = rand(1..2)
        if number == 1
            product.save!
            products.push(product)
        else
            product.save!
        end
        
    end

    group.products = products

    group.save!
end