Folo.controllers :items do
  get :index do
    @items = Item.all
    render 'items/index'
  end

  get :show, map: 'items/:id' do
    @item = Item.find(params[:id])
    render 'items/show'
  end
end
