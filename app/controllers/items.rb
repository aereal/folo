Folo.controllers :items do
  get :index do
    @items = Item.all
    render 'items/index'
  end

  get :show do
  end
end
