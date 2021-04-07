class IdeasController < ApplicationController
  def index
    ideas = Idea.all

    data = []
    ideas.each do |idea|
      hash = {}
      hash[:id] = "#{idea.id}"
      hash[:category] = "#{idea.category.name}"
      hash[:body] = idea.body
      data << hash
    end
    render json: data

  end

  def create
    @category_idea = CategoryIdea.new(category_idea_params)
    if @category_idea.valid?
      @category_idea.save
      render json: @category_idea , status: 201
    else
      render json: @category_idea.errors , status: 422
    end
  end

  def search
    ideas = Idea.search(params[:category_name])

    if ideas == []
      render status: 404
      return
    end

    data = []
    ideas.each do |idea|
      hash = {}
      hash[:id] = "#{idea.id}"
      hash[:category] = "#{idea.category.name}"
      hash[:body] = idea.body
      data << hash
    end
    render json: data
  end

  private

  def category_idea_params
    params.permit(:category_name, :body)
  end
end
