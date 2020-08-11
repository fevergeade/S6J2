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

#modification du Gemfile : ./Gemfile
	#ajout des gem de THP
	gem 'rspec'
	gem 'dotenv'
	gem 'pry'
	gem 'rubocop', '~> 0.57.2'
	#ajout de la gem faker pour les cas de test
	gem 'faker'
	#ajout de la gem table_print pour l'affichage
	gem 'table_print'
	#gestion des password
	gem 'bcrypt'
	#gestion des erreurs
	group :development do
	  gem "better_errors"
	  gem "binding_of_caller"
	end
	#gestion des testes emails
	gem "letter_opener", :group => :development
	#gestion des email
	gem 'dotenv-rails'
=>bundle install


*******************************
rails g scaffold User first_name:string last_name:string description:text email:string encrypted_password:string encrypted_token:string
rails g scaffold Event start_date:datetime duration:integer title:string description:text price:integer location:string

=>rails g model Attendance stripe_customer_id:string


