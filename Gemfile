source 'https://rubygems.org'

ruby '3.2.2'

gem 'rails', '~> 7.1.1'
gem 'rails-controller-testing'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'bootsnap', require: false
gem 'factory_bot_rails', group: %i[development test]
gem 'jbuilder'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'tailwindcss-rails', '~> 2.0'
gem 'tzinfo-data', platforms: %i[windows jruby]
gem 'will_paginate'
group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  gem 'web-console'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'database_cleaner'
end
