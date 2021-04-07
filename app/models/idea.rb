class Idea < ApplicationRecord
  belongs_to :category

  def self.search(search)
    category = Category.where('name LIKE(?)', "#{search}" )         # 完全一致
    ideas = Idea.where('category_id LIKE(?)' ,"#{category.ids[0]}")

    return ideas
  end
end
