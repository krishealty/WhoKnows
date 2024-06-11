# Following document is a file of "WhoKnows" by Krish Lalwani, whose
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

source 'https://rubygems.org'

# IP Address Ranges
gem 'ipaddr'

# IDN Domains
gem 'addressable'

# JSON logging
gem 'json'

# MongoDB logging
group :mongo do
  #gem 'mongo'
  #gem 'rchardet'
end

# Character set detection 
group :rchardet do
  #gem 'rchardet'
end

# Development dependencies required for tests
group :test do
  gem 'rake'
  gem 'minitest'
  gem 'rubocop'
  gem 'rdoc'
  gem 'bundler-audit'
  gem 'simplecov', require: false
end

# Needed for debugging WhoKnows
group :development do
  gem 'pry', :require => false
  gem 'rb-readline', :require => false
end
