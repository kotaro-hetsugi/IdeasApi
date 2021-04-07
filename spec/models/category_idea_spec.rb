require 'rails_helper'

RSpec.describe CategoryIdea, type: :model do
  before do
    @category_idea = FactoryBot.build(:category_idea)
  end

  describe '登録' do
    context '登録できる時' do
      it 'category_nameとbodyがあれば登録できる' do
        expect(@category_idea).to be_valid
      end
    end

    context '登録できない時' do
      it 'category_nameが空では登録できない' do
        @category_idea.category_name = ''
        @category_idea.valid?
        expect(@category_idea.errors.full_messages).to include("Category name can't be blank")
      end
      it 'bodyが空では登録できない' do
        @category_idea.body = ''
        @category_idea.valid?
        expect(@category_idea.errors.full_messages).to include("Body can't be blank")
      end
    end
  end



end
