json.array!(@users) do |user|
  json.extract! user, :email, :passcode
  json.url user_url(user, format: :json)
end
