require 'rails_helper'

RSpec.describe BoughtItem, type: :model do
  before do
    @bought_item = FactoryBot.build(:bought_item)
  end

  describe '購入後画面' do
    it 'userとitemが結びついているかどうか' do
    end
  end
end
