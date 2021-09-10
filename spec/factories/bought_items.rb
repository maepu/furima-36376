FactoryBot.define do
  factory :bought_item do
    user  {Faker::Team.user }
    item {Faker::Team.item }

    association :user
    association :item
  end
end