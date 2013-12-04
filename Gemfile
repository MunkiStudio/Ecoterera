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
gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem 'less-rails-bootstrap'

gem 'negative_captcha'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'
gem 'devise'
gem 'active_attr'
gem 'pony'
gem 'sidekiq'

# Use Capistrano for deployment
group :development do
	gem 'capistrano'
	gem 'foreman'
	group :darwin do
		gem 'rb-fsevent', :require => false
		gem 'guard-pow', :require => false
	end
	gem 'guard-livereload', require: false
end

gem 'rspec-rails', group: [:development, :test]
group :test do
	gem 'database_cleaner'
	gem 'factory_girl_rails'
	gem 'sqlite3'
end
# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
	gem 'pg'
	gem 'rails_12factor'
end