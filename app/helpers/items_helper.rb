# Helper methods defined here can be accessed in any controller or view in the application

Folo.helpers do
  def item_image_tag(item, options={})
    image_tag(item.entity(options.delete(:site) || settings.primary_site).url)
  end
end
