## README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Live environment
  you can try out this app without setting it up locally, try https://immense-badlands-93945.herokuapp.com/ to see it!

# Needs:
  - Ruby 2.7.0
  - Rails 6.0.4.4
  - yarn
  - postgresql 12

# Setting it up:
  Run these following commands in your local machine:
  
  ```sh
  $ git clone https://github.com/25eightpunkweight/test-app
  $ cd ajax-datatables-rails-sample-project
  $ bundle install
  $ yarn install
  $ rails db:create
  $ rails db:migrate
  $ rails db:seed 
  $ rails s
  ```
  Note here that `rails db:seed` is the one that runs the RESTClient request from reqres.in and saves it into the db.

# Navigation:
  - once the rails server is now up, head onto localhost:3000
  - From here, the users datatable is immediately populated with the records from reqres.in
  - AJAX-datatables have search and sort enabled by default.
  - Each row in the table has an edit link
  - At the bottom, there is a link to create a new user

# Unit Testing:
  - run `bundle exec rspec` to run the unit tests on the `User` model.

#
