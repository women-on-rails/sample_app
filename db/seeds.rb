# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  User.create(first_name: Faker::Dessert.variety, last_name: Faker::Dessert.topping, birthdate: Time.at(0 + rand * (Time.now.to_f - 0.to_f)).to_date)
end

50.times do
  Post.create(user: User.all.sample, title: Faker::Dessert.flavor, content: Faker::GreekPhilosophers.quote)
  Comment.create(user: User.all.sample, post: Post.all.sample)
end