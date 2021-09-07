class Article < ApplicationRecord
  extend ActiveHash::Association::ActiveRecordExtensions
  belongs_to :genre

  validates :title, :text, presence: true

  validates :birthday_day_id, :birthday_month_id, :birthday_year_id, :category_id, :days_to_ship_id, :delivery_id, :item_condition_id, :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"}
end
