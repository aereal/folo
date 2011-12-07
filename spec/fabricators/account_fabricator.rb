Fabricator(:account) do
  provider { ['flickr', '500px'].sample }
  uid "foobar"
  token "foo"
  secret "bar"
end
