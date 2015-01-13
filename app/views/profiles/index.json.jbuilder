json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :address, :phone, :mobile, :fax, :zipcode, :city, :state, :country
  json.url profile_url(profile, format: :json)
end
