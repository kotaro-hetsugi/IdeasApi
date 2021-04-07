class Category < ApplicationRecord
  has_many :ideas

  # with_options presence: true do
  #   validates :name #category_name
  # end

  # validates :name, presence: true, uniqueness: true

  # def save
  # category = Category.where(name: name).first_or_initialize
  # category.save
  # Category.create(name: name)

  # category = Category.where(name: name).first_or_initialize
  # category.save

  # end
end
