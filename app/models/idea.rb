class Idea < ApplicationRecord
  belongs_to :category

  def self.search(search)
    category = Category.where('name LIKE(?)', search.to_s)         # 完全一致
    Idea.where('category_id LIKE(?)', category.ids[0].to_s)
  end
end
