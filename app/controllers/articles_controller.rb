class ArticlesController < ApplicationController
  include ArticlesHelper

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

  # pass new instance a hash of attributes
  def create
    @article = Article.new(article_params) # from helper
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

end
