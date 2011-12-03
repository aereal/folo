source :rubygems

# Server requirements (defaults to WEBrick)
# gem 'thin'
# gem 'mongrel'

# Project requirements
gem 'rake'
gem 'sinatra-flash', :require => 'sinatra/flash'

# Component requirements
gem 'sass'
gem 'slim'
gem 'mongoid'
gem 'bson_ext', :require => "mongo"
gem 'atomutil'

# Test requirements
group :test do
  gem 'rspec'
  gem 'rack-test', :require => "rack/test"
end

# Development requirements
group :development do
  gem 'pry-padrino'
end

# Padrino Stable Gem
gem 'padrino', '0.10.5'

# Or Padrino Edge
# gem 'padrino', :git => 'git://github.com/padrino/padrino-framework.git'

# Or Individual Gems
# %w(core gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.10.5'
# end
