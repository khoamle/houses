10.times do
  House.create(
    :street_address => Faker::Address.street_address,
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :zip_code => Faker::Address.zip_code,
    :country => Faker::Address.country
    )
end
