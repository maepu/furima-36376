FactoryBot.define do
  factory :address do
    ward  {Faker::Team.ward }
    address_town {Faker::Team.address_town}
    postal_code {Faker::Team.postal_code}
    build_name {Faker::Team.build_name}
    telephone_number {Faker::Team.telephone_number}

    association :bought_item
  end
end