Folo.controllers :users do
  get :index do
    #
  end

  get :show, map: 'users/:id' do
  end

  get :dashboard do
    content_type :text
    current_account.to_json
  end
end
