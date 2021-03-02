# Gemfiles require at least one gem source, in the form of the URL for a RubyGems server. 
# Generate a Gemfile with the default rubygems.org source by running bundle init. 
# If you can, use https so your connection to the rubygems.org server will be verified with SSL.

source 'http://rubygems.org'

# If your application requires a specific Ruby version or engine, specify your requirements using 
# the ruby method, with the following arguments. All parameters are OPTIONAL unless otherwise specified.
# Each application may specify a Ruby engine. If an engine is specified, an engine version must also be specified.
ruby '2.7.1'

gem 'sinatra', '~> 2.1'
gem 'thin', '~> 1.7', '>= 1.7.2'
gem 'sinatra-flash', '~> 0.3.0'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'activerecord', '~> 6.1', :require => 'active_record'
gem 'rake', '~> 13.0', '>= 13.0.1'
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'require_all', '~> 3.0'
gem 'faker', '~> 2.13'

# Each gem MAY specify membership in one or more groups. Any gem that does not specify membership in any group
# is placed in the default group.

# https://bundler.io/guides/groups.html

# Grouping your dependencies allows you to perform operations on the entire group.

# You'll sometimes have groups of gems that only make sense in particular environments. 
# For instance, you might develop your app (at an early stage) using SQLite but deploy it using mysql2 or pg. 
# In this example, you might not have MySQL or Postgres installed on your development machine and want bundler 
# to skip it. 

group :test do
  gem 'rspec', '~> 3.9'
  gem 'capybara', '~> 3.33'
  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'
end

group :development do
  gem 'sqlite3', '~> 1.4', '>= 1.4.2'
  gem 'pry', '~> 0.13.1'
  gem 'tux', '~> 0.3.0'
end

group :development, :production do
  gem 'shotgun', '~> 0.9.2'
end

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
end