class Folo < Padrino::Application
  register OmniauthInitializer
  register SassInitializer
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers
  register Padrino::Admin::AccessControl

  enable :sessions

  configure do
    set :primary_site, :hatena_fotolife
    set :site_name, 'Folo'
    set :available_services, [:flickr]

    Slim::Engine.set_default_options pretty: true
  end

  # Padrino::Admin::AccessControl
  set :login_page, '/users/auth'
end
