# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: "hunteresorensen@gmail.com",
  password: "Terrablade",
  password_confirmation: "Terrablade",
  name: "Hunter Sorensen",
  roles: "site_admin"
)

puts "One admin user created"

User.create!(
  email: "loneengineer@gmail.com",
  password: "Terrablade",
  password_confirmation: "Terrablade",
  name: "Lone Engineer",
)

puts "One user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 Topics Created"

10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: "RANDOM STUFF FOR TESTING PURPOSES", topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "My great service",
      body: "Random text to fill this body section
      because it needs to be filled",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "Random text to fill this body section
      because it needs to be filled",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
    )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
      name: "Technology #{technology}"
    )
  end

puts "3 Technologies created"