source 'https://rubygems.org'

#gem 'volt', github: 'voltrb/volt'
gem 'volt', github: 'voltrb/volt'

# The following gem's are optional for themeing
# Twitter bootstrap
gem 'volt-bootstrap', '~> 0.0.10'

# Simple theme for bootstrap, remove to theme yourself.
gem 'volt-bootstrap_jumbotron_theme', '~> 0.1.0'

gem 'volt-bootflat'

gem 'volt-editable-text'

# User templates for login, signup, and logout menu.
gem 'volt-user_templates', '~> 0.1.3'

gem 'geocoder'

gem 'activesupport'

group :development, :test do
  # Testing dependencies
  gem 'rspec', '~> 3.2.0'
  gem 'opal-rspec', '~> 0.4.2'
  gem 'capybara', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0'
  gem 'chromedriver2-helper', '~> 0.0.8'
  gem 'poltergeist', '~> 1.5.0'
end

group :development do
  gem 'pry-byebug'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'rest-client'
  gem 'mechanize'
  gem 'launchy'
end

# Server for MRI
platform :mri do
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end
