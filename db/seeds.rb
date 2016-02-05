# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#seed with 4x user
#create a category for each dilemma
categories = ['Love', 'Life', 'Relationships', 'Money', 'Work', 'Study', 'Travel', 'Shopping']

love_cat = Category.create(name: 'Love')
life_cat = Category.create(name: 'Life')
relationship_cat = Category.create(name: 'Relationships')
money_cat = Category.create(name: 'Money')
work_cat = Category.create(name: 'Work')
study_cat = Category.create(name: 'Study')
travel_cat = Category.create(name: 'Travel')
shopping_cat = Category.create(name: 'Shopping')

########

sam = User.create!(name: 'Sam', email: 'sam@email.com', password: 'password', password_confirmation: 'password')
sams_problem = sam.problems.new(category: love_cat, content:'Where should I take my girlfriend for our anniversary?')
sams_problem.solutions.new([
  {title: "Paris"},
  {title: "My parent's house"},
  {title: "Rome"}
])
sams_problem.save!

dan = User.create!(name: 'Dan', email: 'dan@email.com', password: 'password', password_confirmation: 'password')
dans_problem = dan.problems.new(category: work_cat, content:'I have just started a new job but have recieved an offer for a better paid one, what should I do?')
dans_problem.solutions.new([
  {title: "Stay, you've made your bed.."},
  {title: "Quit, take the better paid one"}
])
dans_problem.save!

alice = User.create!(name: 'Alice', email: 'alice@email.com', password: 'password', password_confirmation: 'password')
alices_problem = alice.problems.new(category: relationship_cat, content:'I like my best friends ex. They broke up last month. Can I ask him out?')
alices_problem.solutions.new([
  {title: "No, don't do it."},
  {title: "Wait at least another month"},
  {title: "Go for it"}
])
alices_problem.save!

charlie = User.create!(name: 'Charlie', email: 'charlie@email.com', password: 'password', password_confirmation: 'password')
charlies_problem = charlie.problems.new(category: travel_cat, content:"I have 6 days of annual leave left, is that long enough to visit Hong Kong?")
charlies_problem.solutions.new([
  {title: "Yes, loads of time"},
  {title: "No, jetlag is evil"}
])
charlies_problem.save!

brett = User.create!(name: 'Brett', email: 'brett@email.com', password: 'password', password_confirmation: 'password')
bretts_problem = brett.problems.new(category: travel_cat, content:"Can you do Burning man festival for less than 2k?")
bretts_problem.solutions.new([
  {title: "Yes, if you are prepared to sleep in a tent"},
  {title: "No, you will die"}
])
bretts_problem.save!

amy = User.create!(name: 'Amy', email: 'amy@email.com', password: 'password', password_confirmation: 'password')
amys_problem = amy.problems.new(category: travel_cat, content:"Where is better in winter, Egypt or South Africa?")
amys_problem.solutions.new([
  {title: "Egypt"},
  {title: "SA"},
  {title: "Neither"}
])
amys_problem.save!

rick = User.create!(name: 'Rick', email: 'rick@email.com', password: 'password', password_confirmation: 'password')
ricks_problem = rick.problems.new(category: love_cat, content:"I have been dating my gf for 2 months. Is it too early to ask her to marry me?")
ricks_problem.solutions.new([
  {title: "Yes"},
  {title: "No"}
])
ricks_problem.save!

max = User.create!(name: 'Max', email: 'max@email.com', password: 'password', password_confirmation: 'password')
maxs_problem = max.problems.new(category: life_cat, content:"My roommate drinks all of my beer without replacing it, What should I do?")
maxs_problem.solutions.new([
  {title: "Speak to him about it"},
  {title: "Ignore it"}
])
maxs_problem.save!

matt = User.create!(name: 'Matt', email: 'matt@email.com', password: 'password', password_confirmation: 'password')
matts_problem = matt.problems.new(category: study_cat, content:"Which is better for Computer Science, KCL or UCL?")
matts_problem.solutions.new([
  {title: "KCL"},
  {title: "UCL"},
  {title: "Both same"},
  {title: "Neither"}
])
matts_problem.save!

matts_problem.save!