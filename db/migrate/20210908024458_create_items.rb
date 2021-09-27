class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :title        , null: false
      t.text       :item_text         , null: false
      t.integer    :genre_id     , null: false
      t.integer    :category_id
      t.integer    :item_condition_id
      t.integer    :delivery_fee_id
      t.integer    :prefecture_id
      t.integer    :days_to_ship_id
      t.integer    :price
      t.references :user , null: false,foreign_key: true
      t.timestamps
    end
  end
end
