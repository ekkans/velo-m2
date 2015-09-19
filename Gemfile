source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.2.4'

gem 'pg'
gem 'sendgrid'
gem 'slim-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jquery-turbolinks'
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :jruby]

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_20]
  gem 'foreman'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'haml2slim'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_apps_pages'
  gem 'rails_apps_testing'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'thin'
end

group :production do
  platforms :ruby do # linux
   gem 'puma'
  end
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end

# Loads environment variables from `.env`.
gem 'dotenv-rails', :groups => [:development, :test]

# Fishes out the Accept-Language header into an array.
gem 'http_accept_language'

# Flexible authentication solution for Rails with Warden.
gem 'devise'
gem 'rolify', github: 'EppO/rolify' # issues/221

# Authorization library which restricts what resources a given user is allowed to access.
gem 'cancancan', '~> 1.10'

# Integrate Modernizr javascript library with Rails asset pipeline
gem 'modernizr_rails', github: 'tsechingho/modernizr-rails'

gem 'bootstrap-sass'

# CSS Authoring Framework
gem 'compass-rails', '2.0.4'
# The iconic font designed for Bootstrap
gem 'font-awesome-sass'

source 'https://rails-assets.org' do
  gem 'rails-assets-sugar'

  # Superheroic JavaScript MVW Framework
  gem 'rails-assets-angular', '1.4.0'
  gem 'rails-assets-angular-bootstrap'
  gem 'rails-assets-ngstorage'
  gem 'rails-assets-angular-formly'
  gem 'rails-assets-angular-formly-templates-bootstrap'
  gem 'rails-assets-angular-local-storage'
  gem 'rails-assets-angular-cache'
  gem 'rails-assets-angular-sanitize'
  gem 'rails-assets-angular-moment'
  gem 'rails-assets-angular-translate'
  gem 'rails-assets-angular-translate-loader-static-files'
  gem 'rails-assets-angular-filter'
  gem 'rails-assets-angular-http-auth'
  gem 'rails-assets-moment'
  gem 'rails-assets-humps'
  gem 'rails-assets-angular-growl-v2'
end
# Use your angular templates with rails' asset pipeline
gem 'angular-rails-templates'
gem 'ngannotate-rails'

# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Rails 3 and 4
gem 'kaminari'

# An opinionated micro-framework for creating REST-like APIs in Ruby
gem 'grape'
gem 'grape-entity'
gem 'api-pagination'
# Disables the security feature of strong_params at the model layer,
# allowing you the use of Grape's own params validation instead.
gem 'hashie-forbidden_attributes'
# Add swagger compliant documentation to your grape API
gem 'grape-swagger'
gem 'grape-swagger-rails'

# Doorkeeper is an OAuth 2 provider for Rails
gem 'doorkeeper'
# A Ruby gem that allows Oauth2 protection with Doorkeeper for Grape Api's
gem 'wine_bouncer'

# Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup.
gem 'simple_form'

# RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data
gem 'rails_admin'
# Fix the Rails 4 asset pipeline to generate non-digest along with digest assets
gem 'non-stupid-digest-assets'
# Track changes to your models' data. Good for auditing or versioning.
gem 'paper_trail'

# Easy file attachment management for ActiveRecord
# Only used by ckeditor
gem "paperclip", "~> 4.3"
