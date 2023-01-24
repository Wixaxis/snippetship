# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.0.2', '>= 7.0.2.4'

gem 'administrate', '~> 0.18.0'
gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'webpacker'

gem 'audited'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'sass-rails', '~> 6.0'
gem 'simple_form'
gem 'sorbet-runtime'

group :development, :test do
  gem 'byebug', '~> 11.1', '>= 11.1.3'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'faker'
  gem 'pry-byebug', '~> 3.10', '>= 3.10.1'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'rubocop', require: false
  gem 'spring'
end

group :development do
  gem 'annotate'
  gem 'htmlbeautifier'
  gem 'letter_opener'
  gem 'ruby-lsp', '~> 0.3.7'
  gem 'sorbet'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
