# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#seed with 4x users
harry = User.new(name: 'Harry', email: 'harry@email.com', password: 'password', password_confirmation: 'password')
harry.problems.create(content:'This is a problem')




user = User.create!([
    { name: 'Harry', email: 'harry@email.com', password: 'password', password_confirmation: 'password', profile_image:'' },
    { name: 'Dan', email: 'dan@email.com',  password: 'password',  password_confirmation: 'password' },
    { name: 'Alice', email: 'alice@email.com', password: 'password',  password_confirmation: 'password' },
    { name: 'Charlie', email: 'charlie@email.com',  password: 'password', password_confirmation: 'password' }
    ])

#create a sample problems for each user - how to give it a category?
problem = Problem.create(content:'This is a problem', user_id: 12)

#create a category for each dilemma
categories = ['Love', 'Life', 'Relationships', 'Money', 'Work', 'Study', 'Travel', 'Shopping']
categories.each do |cat|
  Category.create(name: cat)
end



