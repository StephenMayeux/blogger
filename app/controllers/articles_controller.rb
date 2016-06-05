class ArticlesController < ApplicationController

  # we need to use instance variables to make it available to the view
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

end
