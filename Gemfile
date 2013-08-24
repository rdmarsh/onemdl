source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'

# better watching of mac filesystem
gem 'rb-fsevent'

# HTML Abstraction Markup Language
gem 'haml'

gem 'bootstrap-sass', '2.3.2.0'
gem 'faker', '1.1.2'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'taps', '~>0.3.24'

group :development, :test do
  gem 'turn'
  gem 'guard-rspec', '2.5.0'
  gem 'ruby_gntp'
  gem 'launchy'
  gem 'sqlite3', '1.3.7'
  gem 'rspec-rails', '2.13.1'
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.9'
  gem 'haml-rails'
end

group :test do
  gem 'selenium-webdriver', '2.0.0'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1'
end

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
  gem 'unicorn'
end