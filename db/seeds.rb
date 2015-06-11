# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: 'ericaporter@email.com', password: 'password', password_confirmation: 'password')
problem = user.problems.create(content:'example problem')
# problem.solutions.create(title: 'example solution')

categories = ['Love', 'Life', 'Relationships', 'Money', 'Work', 'Study', 'Travel', 'Shopping']
categories.each do |cat|
  Category.create(name: cat)
end



