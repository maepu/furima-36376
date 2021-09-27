require 'rails_helper'

RSpec.describe Address, type: :model do
  before do
    @address = FactoryBot.build(:address)
  end

  describe '住所(町,郵便番号,電話番号)' do
    it 'wardが空では登録できない' do
      @ward.name = ''
      @ward.valid?
      expect(@ward.errors.full_messages).to include("Ward can't be blank")
    end
    it 'address_townが空では登録できない' do
      @address.name = ''
      @address.valid?
      expect(@address.errors.full_messages).to include("Address_town can't be blank")
    end
    it 'postal_codeが空では登録できない' do
      @postal_code.name = ''
      @postal_code.valid?
      expect(@address.errors.full_messages).to include("Postal_code can't be blank")
    end
    it 'telephone_numberが空では登録できない' do
      @telephone_number.name = ''
      @telephone_number.valid?
      expect(@telephone_number.errors.full_messages).to include("Telephone_number can't be blank")
    end
  end
end