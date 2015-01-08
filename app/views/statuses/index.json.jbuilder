json.array!(@statuses) do |status|
  json.extract! status, :id, :date, :status, :comments
  json.url status_url(status, format: :json)
end
