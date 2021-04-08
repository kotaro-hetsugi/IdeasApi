require 'rails_helper'

RSpec.describe "CategoryIdeas", type: :request do

  describe "GET ideas_path" do
    it '一覧への遷移が成功すること' do
      get ideas_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST ideas_path" do
    it 'アイデアとカテゴリの登録ができること' do
    end
    it 'すでに登録されているカテゴリは重複して登録ができないこと' do
    end
  end

  describe "GET search_ideas_path" do
    it '' do
    end
  end
end
