Folo.controllers :users do
  get :index do
    #
  end

  get :show, with: :id do
    content_type :text
    current_account.to_json
  end
end
