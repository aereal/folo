class Folo < Padrino::Application
  register OmniauthInitializer
  register SassInitializer
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  configure do
    set :primary_site, :hatena_fotolife
    set :site_name, 'Folo'

    Slim::Engine.set_default_options pretty: true
  end
end
