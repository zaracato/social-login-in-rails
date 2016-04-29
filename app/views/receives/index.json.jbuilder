json.array!(@receives) do |receife|
  json.extract! receife, :id, :user_id, :bank_id, :clabe, :name
  json.url receife_url(receife, format: :json)
end
