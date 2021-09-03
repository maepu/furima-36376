#users table

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| email    | string | null: false |
| password | string | null: false |
| name     | string | null: false |
| profile  | text   | null: false |

has_many : addresses
has_many : items
has_one : user_credit

#items table

| Column | Type       |Options                          |
| ------ | ---------- | ------------------------------- |
| title  | string     | null: false |
| item_text | text |null: false |
| category | string | null: false |
| item_status | string | null: false |
| Shipping charges | string | null: false |
| Shipping area | string | null: false |
| days to ship | string | null: false |
| price | text | null: false |
| user | references | foreign_key: true |

has_one : address
has_one : user_credit
belongs_to : users

#addresses table

| Column | Type       |Options|
| ------ | ---------- | ----- |
| prefectures   | text       | null:false |
| Ward   | references | foreign_key: true |
| Address town | references | foreign_key: true|
| Postal code | string | null: false |
| user | references | foreign_key: true|

belongs_to : user
belongs_to : item

#user_credit table

| Column | Type       |Options|
| ------ | ---------- | ----- |
| credit_numbers | references: user | foreign_key: true |
| credit_expiration_date | references: user | foreign_key: true |
| security code | references | foreign_key: true |
| user | references | foreign_key: true |

belongs_to : user
has_one : address
