require 'faker'

greensneakers = User.create!(username: "greensneakers", email: "greensneakers@dbc.com", password: "password")

11.times do
  User.create!(username:Faker::Internet.user_name, email:Faker::Internet.email, password: "password")
end

Group.create! [
  {name:"Old Roommates", description: "Former residents of 123 Main."},
  {name:"Old Coworkers", description: "We worked at a crappy place together."},
  {name:"College Friends", description: "Once a Bingaling, always a Bingaling."}
]

Membership.create! [
  {group_id: 1, user_id: 1},
  {group_id: 1, user_id: 11},
  {group_id: 1, user_id: 7},
  {group_id: 1, user_id: 9},
  {group_id: 2, user_id: 2},
  {group_id: 2, user_id: 5},
  {group_id: 2, user_id: 8},
  {group_id: 2, user_id: 3},
  {group_id: 3, user_id: 4},
  {group_id: 3, user_id: 10},
  {group_id: 3, user_id: 12},
  {group_id: 3, user_id: 6}
]

Event.create! [
  {title:"Brunch", date: Faker::Date.between(2.days.ago, Date.today), location: "Applewood", description: "Let's have brunch!", group_id: 1},
  {title:"Drinks", date: Faker::Date.between(2.days.ago, Date.today), location: "Commonwealth", description: "Let's have a happy hour!", group_id: 2},
  {title:"Pick Up Soccer Game", date: Faker::Date.between(2.days.ago, Date.today), location: "Prospect Park", description: "Let's play soccer!", group_id: 3}
]
