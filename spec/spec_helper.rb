PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)

Spork.prefork do
  RSpec.configure do |conf|
    conf.include Rack::Test::Methods

    conf.before(:suite) do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.orm = 'mongoid'
    end

    conf.after(:suite) do
      DatabaseCleaner.clean
    end
  end

  def app
    ##
    # You can handle all padrino applications using instead:
    #   Padrino.application
    Folo.tap { |app|  }
  end
end

Spork.each_run do
  require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
end
