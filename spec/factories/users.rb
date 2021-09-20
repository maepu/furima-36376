FactoryBot.define do
  factory :user do
    name {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    encrypted_password = Faker::Internet.password(min_length: 6)
    encrypted_password {encrypted_password}
    password_confirmation {encrypted_password}
    last_name_chinese_characters {Faker::Name.last_name_chinese_characters}
    last_name_katakana {Faker::Name.last_name_katakana}
  end
end