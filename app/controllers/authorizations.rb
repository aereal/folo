Folo.controllers :authorizations, map: :users do
  get :index do
    render 'authorizations/index'
  end

  get :callback, map: 'auth/:provider/callback' do
    auth = request.env['omniauth.auth']

    if current_account
      #
    else
      if user = account_model.where('accounts.provider' => auth.provider, 'accounts.uid' => auth.uid).first
        set_current_account(user)
      else
        #
      end
    end

    redirect 'http://' + request.env['HTTP_HOST'] + url(:users, :show, id: current_account)
  end
end
