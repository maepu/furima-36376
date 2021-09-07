class Delivery_fee < ActiveHash::Base
  #配送料の負担
  self.date = [
  { id: 1, name: '__'},
  { id: 2, name: '着払い(購入者負担)'},
  { id: 3, name: '送料込み(出品者負担)'}
  ]

  include ActiveHash::Associations
  has_many :articles
end