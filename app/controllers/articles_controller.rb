class ArticlesController < ApplicationController
  include ArticlesHelper

  # we need to use instance variables to make it available to the view
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
  end

  # pass new instance a hash of attributes
  def create
    @article = Article.new(article_params) # from helper
    @article.save
    flash.notice = "'#{@article.title}' was created!"
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash.notice = "'#{@article.title}' is gone forever!"
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params) # update() also saves
    flash.notice = "'#{@article.title}' was updated!" # add flash to templates
    redirect_to article_path(@article)
  end

end
