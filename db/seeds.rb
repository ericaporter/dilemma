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

sam = User.create!(name: 'Sam', email: 'sams@email.com', password: 'password', password_confirmation: 'password')
sams_problem = sam.problems.new(category: love_cat, content:'Where should I take my girlfriend for our anniversiary?')
sams_problem.solutions.new([
  {title: "Paris"},
  {title: "My parent's house"},
  {title: "Rome"}
])
sams_problem.save!

dan = User.create!(name: 'Dan', email: 'dans@email.com', password: 'password', password_confirmation: 'password')
dans_problem = dan.problems.new(category: work_cat, content:'I have just started a new job but have recieved an offer for a better paid one, what should I do?')
dans_problem.solutions.new([
  {title: "Stay, you've made your bed.."},
  {title: "Quit, take the better paid one"}
])
dans_problem.save!

alice = User.create!(name: 'Alice', email: 'alices@email.com', password: 'password', password_confirmation: 'password')
alices_problem = alice.problems.new(category: relationship_cat, content:'I like my best friends ex. They broke up last month. Can I ask him out?')
alices_problem.solutions.new([
  {title: "No, don't do it."},
  {title: "Wait at least another month"},
  {title: "Go for it"},
])
alices_problem.save!

charlie = User.create!(name: 'Charlie', email: 'charlies@email.com', password: 'password', password_confirmation: 'password')
charlies_problem = charlie.problems.new(category: travel_cat, content:"I have 6 days of leave left, is that long enough to visit Hong Kong?")
charlies_problem.solutions.new([
  {title: "Yes, loads of time"},
  {title: "No, jetlag is evil"}
])
charlies_problem.save!
