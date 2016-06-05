module ArticlesHelper

  # This works without a helper
  # def create
    # @article = Article.new(
    # @article.title = params[:article][:title],
    # @article.body = params[:article][:body])
    # @article.save
    # redirect_to article_path(@article)
  # end

  # But for our shortcut, we need to add some permissions
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
