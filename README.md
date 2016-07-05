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

adapter: mysql2</br>
encoding: utf8</br>
reconnect: false</br>
database: blog_development</br>
pool: 5</br>
username: --DB User --</br>
password: --Your Password --</br>
socket: /var/run/mysqld/mysqld.sock</br>
# Warning: The database defined as “test” will be erased and # re-generated from your development database when you run</br> “rake”. # Do not set this db to the same as development or production. test:</br>

adapter: mysql2</br>
encoding: utf8</br>
reconnect: false</br>
database: blog_test</br>
pool: 5</br>
username: --DB User --</br>
password: --Your Password --</br>
socket: /var/run/mysqld/mysqld.sock</br>
production:</br>

adapter: mysql2</br>
encoding: utf8</br>
reconnect: false</br>
database: blog_production</br>
pool: 5</br>
username: --DB User --</br>
password: --Your Password --</br>
socket: /var/run/mysqld/mysqld.sock</br>

Commands for database creation</br>
rake db:create</br>
rake db:migrate</br>

Commands for running server</br>
rails server</br>

friendly_id used : for url that are easy to understood</br>
twitter-bootstrap-rails : for using bootstrap feature </br>
will_paginate : for pagination</br>
paperclip : for image upload associated with particular article</br>
cancancan : for user based authentication</br>
ransack : for searching</br>
