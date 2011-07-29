source 'http://rubygems.org'

gem 'rails', '~>3.0.4'

gem 'blacklight', '~> 3.0.0'
gem 'hydra-head', :path=>"../hydra-head"

# We will assume that you're using sqlite3 for testing/demo, 
# but in a production setup you probably want to use a real sql database like mysql or postgres
gem 'sqlite3-ruby', :require => 'sqlite3'

#  We will assume you're using devise in tutorials/documentation. 
# You are free to implement your own User/Authentication solution in its place.
gem 'devise'

# For testing.  You will probably want to use all of these to run the tests you write for your hydra head
group :development, :test do 
       gem 'solrizer-fedora', '>=1.0.1'
       gem 'ruby-debug'
       gem 'rspec'
       gem 'rspec-rails', '>=2.5.0'
       gem 'mocha'
       #gem 'generator_spec'
       gem 'cucumber-rails'
       gem 'database_cleaner'
       gem 'capybara'
       #gem 'webrat'
       #gem 'aruba'
       gem 'bcrypt-ruby'
end
