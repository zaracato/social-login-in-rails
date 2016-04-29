json.array!(@bowins) do |bowin|
  json.extract! bowin, :id, :user_id, :bank_id, :clabe, :name
  json.url bowin_url(bowin, format: :json)
end
