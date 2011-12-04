module OmniauthInitializer
  def self.registered(app)
    app.use OmniAuth::Builder do
      provider :developer unless Padrino.env == :production
      provider :flickr, ENV['FLICKR_API_KEY'], ENV['FLICKR_API_SECRET'],
        path_prefix: app.url_for(:auth, :index)
    end
  end
end
