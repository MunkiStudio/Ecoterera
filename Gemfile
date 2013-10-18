source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby "2.0.0"
gem 'rails', '4.0.0'

gem 'mysql2', group: :development

group :assets do 
	gem 'sass-rails', '~> 4.0.0'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'

gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

gem 'devise'

# Use Capistrano for deployment
group :development do 
	gem 'capistrano'
	gem 'foreman'
end

gem 'rspec-rails', group: [:development, :test]
group :test do 
	gem 'cucumber-rails'
	gem 'database_cleaner'
	gem 'factory_girl_rails'
end
# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do 
	gem 'pg'
	gem 'rails_12factor'
end