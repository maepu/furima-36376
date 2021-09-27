FactoryBot.define do
  factory :user do
    name {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    # last_name_chinese_characters {Faker::}
    last_name_chinese_characters {"田中"}
    first_name_chinese_characters {"太郎"}
    last_name_katakana {"タナカ"}
    first_name_katakana {"タロウ"}
    birthday {12/24}
    pass = Faker::Internet.password(min_length: 6)
    password {pass}
    password_confirmation {pass}
  end
end