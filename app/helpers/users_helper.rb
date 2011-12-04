# Helper methods defined here can be accessed in any controller or view in the application

Folo.helpers do
  def auth_url(provider)
    [url(:auth, :index), provider].join('/')
  end
end
