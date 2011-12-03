class Folo < Padrino::Application
  register SassInitializer
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  configure do
    set :primary_site, :hatena_fotolife
  end
end
