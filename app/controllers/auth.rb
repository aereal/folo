Folo.controllers :auth, map: :accounts do
  get :index do
  end

  get :callback, map: 'auth/:provider/callback' do
    auth_info = request.env['omniauth.auth']
    account = Account.find_by_provider_and_uid(auth_info) || Account.authorize!(auth_info)
    set_current_account(account)
    redirect 'http://' + request.env['HTTP_HOST'] + url(:accounts, :show, id: account.id)
  end
end
