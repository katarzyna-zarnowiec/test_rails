source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
# Gem which allows to create sample data for seeding data base
gem 'faker', '1.4.2'
# Add bootstrap
gem 'bootstrap-sass', '3.2.0.0'
gem 'sass-rails', '5.0.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.5.3'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails', '4.0.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '2.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.2.3'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development, :test do
	gem 'sqlite3', '1.3.9'
	gem 'spring', '1.1.3'	
  	# Call 'byebug' anywhere in the code to stop execution and get a debugger console
  	gem 'byebug', '3.4.0'
  	# Access an IRB console on exception pages or by using <%= console %> in views
  	gem 'web-console', '2.0.0.beta3'
end

group :test do
	gem 'minitest-reporters', '1.0.5'
	gem 'mini_backtrace', '0.1.3'
	gem 'guard-minitest', '2.3.1'
end

group :production do
	gem 'pg', '0.17.1'
	gem 'rails_12factor', '0.0.2'
end
