json.array!(@senders) do |sender|
  json.extract! sender, :id, :name, :description
  json.url sender_url(sender, format: :json)
end
