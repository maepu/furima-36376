#users table

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| name | string | null: false |
| email    | string | null: false,unique: true |
| encrypted_password | string | null: false |
| last_name_chinese_characters | string | null: false |
| first_name_chinese_characters | string | null: false |
| last_name_katakana | string | null: false |
| first_name_katakana | string | null: false |
| birthday | date | null: false |

has_many : items
has_many : bought_items

#items table

| Column | Type       |Options                          |
| ------ | ---------- | ------------------------------- |
| title  | string     | null: false |
| item_text | text |null: false |
| category_id | integer | null: false |
| item_condition_id | integer | null: false |
| delivery_fee_id | integer | null: false |
| prefecture_id | integer | null: false |
| days_to_ship_id | integer | null: false |
| price | integer | null: false |
| user | references | null: false,foreign_key: true |

has_one : bought_item
belongs_to : user

#addresses table

| Column | Type       |Options|
| ------ | ---------- | ----- |
| prefecture_id | integer | null:false |
| ward   | string | null: false |
| address_town | string | null: false |
| postal_code | string | null: false |
| build_name | string |  |
| telephone_number | string |null: false |
| bought_item | references | null: false,foreign_key: true |

belongs_to : bought_item

#bought_items table

| Column | Type       |Options|
| ------ | ---------- | ----- |
| user | references | null: false,foreign_key: true |
| item | references | null: false,foreign_key: true |

belongs_to : user
has_one : address
belongs_to : item