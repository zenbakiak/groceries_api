source "https://rubygems.org"

ruby "2.2.3"

gem "rails", "4.2.4"
gem "delayed_job_active_record"
gem "jquery-rails"
gem "pg"
gem "sass-rails", "~> 5.0"
gem "coffee-rails", "~> 4.1.0"
gem "uglifier", ">= 1.3.0"
gem "puma"

gem 'devise'
gem "rolify"

gem 'active_model_serializers'

gem 'mini_magick'
gem 'carrierwave'
gem 'fog'


group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.2.0"
  gem "ffaker"
  gem 'dotenv-rails'
end

# Test gems
group :test do
  gem "database_cleaner"
  gem "shoulda-matchers"
  gem 'json_spec'
end

# Production and staging gems
group :production, :staging do
  gem "rails_12factor"
  gem "exception_notification"
end
