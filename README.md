# dilemma
Rails app allowing users to post their social dilemmas to a community of users, who are able to vote for solutions and leave comments. 
### Setup the database
Adjust config/database.yml as needed.
```ruby
bundle exec rake db:create
bundle exec rake db:migrate db:test:prepare
```
### Generate some data
```ruby
bundle exec rake db:seed
```
### Enable Facebook authentication
Create a file named .env in the root of the application folder with the Facebook key and secret like so:
```ruby
FACEBOOK_KEY=YOUR_KEY
FACEBOOK_SECRET=YOUR_SECRET
```
