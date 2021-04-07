class CategoryIdea
  include ActiveModel::Model
  attr_accessor :category_name, :body

  validates :category_name, presence: true 
  validates :body, presence: true

  def save
    category = Category.where(name: category_name).first_or_initialize
    category.save
    Idea.create(body: body,category_id: category.id)
  end

end