json.array!(@accounts) do |account|
  json.extract! account, :id, :user_id, :bank_id, :clabe, :name
  json.url account_url(account, format: :json)
end
