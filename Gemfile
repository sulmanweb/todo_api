source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.2'
# Use mysql as the database for Active Record
gem 'mysql2', '0.5.2'
# Use Puma as the app server
gem 'puma', '3.12.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.8.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '1.3.2', require: false
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', '1.0.2'
# for encryption of passwords
gem 'bcrypt', '3.1.12'
# for token auth
gem 'devise_token_auth', '1.0.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '10.0.2', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '3.1.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '1.2018.9', platforms: [:mingw, :mswin, :x64_mingw, :jruby]