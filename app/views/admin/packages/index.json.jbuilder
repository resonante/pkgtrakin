json.array!(@packages) do |package|
  json.extract! package, :id, :reference, :track, :date_received, :description
  json.url package_url(package, format: :json)
end
