class ArticleController < ApplicationController
  def list
    @posts = Article.all.order('created_at DESC')
    @titre = "Articles récents"
  end

  def show
    @post = Article.find(params[:id])
    @titre = @post.titre
  end
end
