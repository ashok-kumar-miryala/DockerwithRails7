# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* steps to implement Docker configuration

$ rails new docker-rails-application --api -d mysql

$ cd docker-rails-application

$ touch Dockerfile

$ mkdir development && touch development/docker-compose.yml

$ docker build .

$ cd development

$ docker-compose run web bundle install

$ docker-compose run web rails db:setup

$ docker-compose build

$ docker-compose up

$ docker-compose run web rails g controller home

$ docker-compose run web rails g scaffold employee name:string age:string 

$docker-compose run web rails db:migrate

$docker-compose run web bin/rails db:environment:set RAILS_ENV=development

