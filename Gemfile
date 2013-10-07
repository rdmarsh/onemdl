source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'

# better watching of mac filesystem
gem 'rb-fsevent'

# HTML Abstraction Markup Language
gem 'haml'
gem 'haml-rails'

gem 'bootstrap-sass', '~> 2.3.2'
gem 'faker', '1.1.2'
gem 'populator'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
#gem 'taps', '~>0.3.24'
gem 'simple_form'
gem 'show_for', '~> 0.2.4'
# railscast 230
gem 'inherited_resources'
gem 'has_scope'
# gem "rails-settings-cached", "0.3.1"
# the countries gem must appear above country_select gem
gem 'countries'
gem 'country_select'
gem 'public_activity'
gem 'kaminari'
# gem 'bootstrap-kaminari-views'
gem 'activevalidators', '~> 2.0.2'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'jquery-ui-rails'
gem "bootstrap-datepicker-rails", "~> 1.1.1.7"

# add markdown support to description fields
gem 'redcarpet'

# Apparently, It was failing because of the friendlyId gem. If you use friendlyId, you may need to specify the rails4-branch.
# edit: Make sure to get the actual branch from norman/friendly_id. According to the readme, it needs to be at least branch: 5.0-stable to work with rails4.
# gem 'friendly_id', github: 'FriendlyId/friendly_id', branch: 'rails4'
gem 'friendly_id', '5.0.0.rc2' # Note: You MUST use 5.0.0 or greater for Rails 4.0+




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
end

group :test do
  gem 'selenium-webdriver', '~> 2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1'
end

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2' #for heroku
  gem 'unicorn'
end

