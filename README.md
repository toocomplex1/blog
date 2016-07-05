Simple Rails Blog Application built on Ruby on Rails Framework

This is stage one of the simple rails blog .

Install Rails</br>
Install mySQL</br>
Clone this repoistory</br>

Copy this to config/database.yml
# Rails version 4.2.6  
# MySQL. Versions 5.7.11 
# Install the MYSQL driver 
# gem install mysql2 
# Ensure the MySQL gem is defined in your Gemfile 
# dont forgot to run bundle install 
# gem 'mysql2' 

adapter: mysql2
encoding: utf8
reconnect: false
database: blog_development
pool: 5
username: --DB User --
password: --Your Password --
socket: /var/run/mysqld/mysqld.sock
# Warning: The database defined as “test” will be erased and # re-generated from your development database when you run “rake”. # Do not set this db to the same as development or production. test:

adapter: mysql2
encoding: utf8
reconnect: false
database: blog_test
pool: 5
username: --DB User --
password: --Your Password --
socket: /var/run/mysqld/mysqld.sock
production:

adapter: mysql2
encoding: utf8
reconnect: false
database: blog_production
pool: 5
username: --DB User --
password: --Your Password --
socket: /var/run/mysqld/mysqld.sock

Commands for database creation
rake db:create
rake db:migrate

Commands for running server
rails server

friendly_id used : for url that are easy to understood
twitter-bootstrap-rails : for using bootstrap feature 
will_paginate : for pagination
paperclip : for image upload associated with particular article
cancancan : for user based authentication
ransack : for searching
