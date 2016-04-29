json.array!(@pays) do |pay|
  json.extract! pay, :id, :user_id, :bank_id, :name
  json.url pay_url(pay, format: :json)
end
