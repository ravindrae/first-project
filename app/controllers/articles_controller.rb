class ArticlesController < ApplicationController
before_action :authenticate_user!,except:[:show ,:index]
before_action :find_article,only:[:show,:edit,:update,:destroy]
#before_action :authenticate_user
  def index
    @articles=Article.all
  end

  def show
   #@article = Article.find(params[:id])
   @comments=Comment.where(article_id: @article).order("created_at DESC")
  end

  def new
  @article=Article.new
  end

  def edit
  #@article = Article.find(params[:id])
  end

  def create
#  @article =current_user.articles.build(article_params)
  @article=Article.new(article_params)
  @article.user_id=current_user.id

  if @article.save
    redirect_to @article
  else
    render 'new'
  end
  end

  def update
  #  @article = Article.find(params[:id])

    if @article.update(article_params)
    redirect_to @article
    else
    render 'edit'
    end
  end
  def destroy
  #  @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :email)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
