#users table

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| name | string | null: false |
| email    | string | unique: true |
| encrypted_password | string | null: false |
| last_name_Chinese_characters | string | null: false |
| first_name_Chinese_characters | string | null: false |
| last_name_katakana | string | null: false |
| first_name_katakana | string | null: false |
| birthday | date | null: false |

has_many : items
has_one : bought

#items table

| Column | Type       |Options                          |
| ------ | ---------- | ------------------------------- |
| title  | string     | null: false |
| item_text | text |null: false |
| category_id | integer |  |
| item_condition_id | integer |  |
| delivery_fee_id | integer |  |
| prefecture_id | integer |  |
| days_to_ship_id | integer |  |
| price | integer | null: false |
| user_id | references | foreign_key: true |

has_one : addresses
has_one : bought
belongs_to : users

#addresses table

| Column | Type       |Options|
| ------ | ---------- | ----- |
| prefecture_id | integer | null:false |
| ward   | string | null: false |
| address_town | string | null: false |
| postal_code | string | null: false |
| build_name | string |  |
| telephone_number | string |null: false |
| user_id | references | foreign_key: true|

has_one : bought

#bought table

| Column | Type       |Options|
| ------ | ---------- | ----- |
| current_user | references: user | foreign_key: true |
| current_item | references: user | foreign_key: true |
| user_id | references | foreign_key: true |

belongs_to : users
has_one : addresses