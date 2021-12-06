class ArticlesController < ApplicationController
  # get all articles
  def index
    @articles = Article.all
  end

  # get one article by id
  def show
    @article = Article.find(params[:id])
  end
end
