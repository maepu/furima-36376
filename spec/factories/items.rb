FactoryBot.define do
  factory :item do
    title  {Faker::Team.title }
    item_text {Faker::Team.item_text}
    price {Faker::Team.price}

    association :user
  end
end