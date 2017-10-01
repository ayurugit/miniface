# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#100.times do |n|

n = 6
 while n <= 15
  email = Faker::Internet.email
  password = "password"
  name = Gimei.first.hiragana
  user = User.new(
   #User.create!(
               email: email,
               password: password,
               password_confirmation: password,
               name: name ,
               uid: n
               )
  user.skip_confirmation!
  user.save              
  n = n + 1
  
end

 n = 6
 while n <= 15
    title = Faker::SlackEmoji.people
    content = Faker::SlackEmoji.emoji
  Topic.create(
    title: title,
    content: content,
    user_id: n
   )
  n = n + 1
   
 end