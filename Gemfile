source 'https://rubygems.org'

# Custom Ruby version, CI checks remain unaffected.
if ENV['CUSTOM_RUBY_VERSION']
  ruby ENV['CUSTOM_RUBY_VERSION']
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0.5'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.3'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Bootstrap framework
gem 'bootstrap-sass', '~> 3.3.5'

# Clearance, handles auth
gem 'clearance'

# Sidekiq, jobs processing
gem 'sidekiq'

# Turbolinks JS fixes
gem 'jquery-turbolinks'

group :production do
  # Rails-12factor
  gem 'rails_12factor'
  # Use Puma as the app server
  gem 'puma', '~> 2.14'
  # Skylight, metrics.
  gem 'skylight', platforms: :mri
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: :mri

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Coveralls, code coverage
  gem 'coveralls', require: false
end
