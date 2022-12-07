FactoryBot.define do
  factory :post do
    user_id { 1 }
    room_name { "MyString" }
    room_price { 1 }
    room_info { "MyText" }
    room_address_postcode { 1 }
    room_address_prefecture { "MyString" }
    room_address_town_village { "MyString" }
    room_address_other { "MyString" }
    room_photo { "MyString" }
  end
end
