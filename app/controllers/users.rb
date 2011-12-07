Folo.controllers :users do
  get :index do
    #
  end

  get :show, map: 'users/:nickname' do
    @user = User.where(nickname: params[:nickname]).first
    render 'users/show'
  end

  get :dashboard do
    content_type :text
    current_account.to_json
  end
end
