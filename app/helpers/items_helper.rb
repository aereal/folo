# Helper methods defined here can be accessed in any controller or view in the application

Folo.helpers do
  def item_image_tag(item, site=nil)
    image_tag(item.url(site || settings.primary_site))
  end
end
