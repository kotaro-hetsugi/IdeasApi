class CategorysController < ApplicationController
  # def index
  #   @categorys = Category.all
  #   render json: @categorys
  # end

  # def create
  #   @category = Category.new(category_params)
  #   if @category.valid?
  #     @category.save
  #     render json: {  data: @category}
  #   else
  #     render json: @category.errors, status: :unprocessable_entity
  #   end
  # end

  # private

  # def category_params
  #   params.require(:category).permit(:name)#.merge(name: category_name)
  # end
end
