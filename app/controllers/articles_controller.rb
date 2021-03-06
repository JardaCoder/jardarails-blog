class ArticlesController < ApplicationController
  # get all articles
  def index
    @articles = Article.all
  end

  # get one article by id
  def show
    @article = Article.find(params[:id])
  end
  
  # create article
  def new
    @article  =  Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new 
    end

  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

end
