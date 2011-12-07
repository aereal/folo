Fabricator(:user) do
  nickname "aereal"
  email "aereal@kerare.org"
  role "users"
  accounts(count: 1) do |account, i|
    Fabricate.build(:account, provider: 'flickr')
  end
end
