class ArticlesController < ApplicationController
  # we need to use instance variables to make it available to the view 
  def index
    @articles = Article.new
  end

end
