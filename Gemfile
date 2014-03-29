# UseR_DushboarD Gem list
#
source 'https://rubygems.org'
gem 'rails', '4.0.4'
gem 'devise', '3.1'
gem 'mysql2'  # <= local database
gem 'heroku'  # <= heroku plugin
gem 'pg'      # <= for heroku database
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'haml-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'json'
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem 'mobiler', path: 'vendor/engines/mobiler'
group :doc do
  gem 'sdoc', require: false
end
group :development do   # Debugging
  gem 'pry'               # <= for `binding.pry` breakpoints in code;
  gem 'better_errors'     # <= for beautifull bugs;
  gem "binding_of_caller" # <= for data evaluating at better_errors page;
  gem 'quiet_assets'      # <= for assets pipeline log messages shut`uping;

  #platforms :ruby do      # <= for linux systems only
  #  gem 'zeus' # Zeus preloads your Rails app so that your normal development tasks such as
               # console, server, generate, and specs/tests take less than one second.
               # OS X 10.7+ OR Linux 2.6.13+ (https://github.com/burke/zeus)
               # $ zeus start    -terminal tab #1
               # $ zeus server   -terminal tab #2
  #end
end
group :development do
  gem 'mailcatcher'
end