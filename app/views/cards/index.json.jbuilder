json.array!(@cards) do |card|
  json.extract! card, :id, :card_id, :card_number, :holder_name, :expiration_year, :expiration_month, :allows_charges, :allows_payouts, :creation_date, :bank_name, :bank_code, :customer_id, :points, :addresses
  json.url card_url(card, format: :json)
end
