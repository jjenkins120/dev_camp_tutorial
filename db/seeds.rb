# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying seeds'
Technology.destroy_all
Blog.destroy_all
Topic.destroy_all
Skill.destroy_all
Portfolio.destroy_all

puts 'Seeding data'

puts 'Creating topics'


5.times do |topic|
    Topic.create!(
        title: "Topic #{topic}",
    )
end


puts 'Creating Blogs'


10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",  
        body: 'This is a sample body',
        topic_id: Topic.last.id
    )
end

puts 'Creating Skills'

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts 'Creating Portfolio items'

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title #{portfolio_item}", 
        subtitle: 'Ruby on Rails', 
        body: 'Sample body',
        main_image: 'https://via.placeholder.com/150', 
        thumb_image: 'https://via.placeholder.com/150'
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title #{portfolio_item}", 
        subtitle: 'Angular', 
        body: 'Sample body',
        main_image: 'https://via.placeholder.com/150', 
        thumb_image: 'https://via.placeholder.com/150'
    )
end

puts 'Creating Technologies'

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}",
    )
end