# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


#create a different profile pic for each user
user = User.create!([
    { name: 'Harry', email: 'harry@email.com', password: 'password', password_confirmation: 'password', profile_image:'' },
    { name: 'Dan', email: 'dan@email.com',  password: 'password',  password_confirmation: 'password' },
    { name: 'Alice', email: 'alice@email.com', password: 'password',  password_confirmation: 'password' },
    { name: 'Charlie', email: 'charlie@email.com',  password: 'password', password_confirmation: 'password' }
    ])

#create a sample problems for each user - how to give it a category?
problem = User.create(content:'This is a problem')

#create a different background image for each problem


#create a category for each dilemma
categories = ['Love', 'Life', 'Relationships', 'Money', 'Work', 'Study', 'Travel', 'Shopping']
categories.each do |cat|
  Category.create(name: cat)
end



