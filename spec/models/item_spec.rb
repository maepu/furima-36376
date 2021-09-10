require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '出品' do

    context '出品できる場合' do
      it "titleの値が存在すれば作成できる" do
        expect(@title).to be_valid
      end
      it "item_textの値が存在すれば作成できる" do
        expect(@item_text).to be_valid
      end
      it "priceの値が存在すれば作成できる" do
        expect(@price).to be_valid
      end
    end

    context '出品できない場合' do
      it "titleが空では作成できない" do
        @title.name = ''
        @title.valid?
        expect(@title.errors.full_messages).to include("Title can't be blank")
      end
      it 'item_textが空では出品できない' do
        @item_text.name = ''
        @item_text.valid?
        expect(@item_text.errors.full_messages).to include("Item can't be blank")
      end
      it 'priceが空では出品できない' do
        @price.name = ''
        @price.valid?
        expect(@price.errors.full_messages).to include("Price can't be blank")
      end
    end
  end
end