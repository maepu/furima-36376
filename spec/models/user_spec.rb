require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'nameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end
    it 'nameが6文字以下であれば登録できる' do

    end
    it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
      @user.password = '123456'
      @user.password_confirmation = '123456'
      expect(@user).to be_valid
    end
    it 'nameが空では登録できない' do
      @user.name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Name can't be blank")
    end
    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do
      @user.password = '123456'
      @user.password_confirmation = '1234567'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'nicknameが7文字以上では登録できない' do
    end
    it '重複したemailが存在する場合登録できない' do
    end
    it 'passwordが5文字以下では登録できない' do
      @user.password = '12345'
      @user.password_confirmation = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end
    it 'last_name_chinese_charactersが空では登録できない' do
      @user.last_name_chinese_characters = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last_name_chinese_characters can't be blank")
    end
    it 'last_name_katakanaが空では登録できない' do
      @user.last_name_katakana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last_name_katakana can't be blank")
    end
  end
end
