class ArticlesController < ApplicationController
before_action :authenticate_user!,except:[:show ,:index]
before_action :find_a,only:[:show,:edit,:update,:destroy]
#before_action :authenticate_user
  def index
    @articles=Article.all
  end

  def show
   #@article = Article.find(params[:id])
   @comments=Comment.where(article_id: @article).order("created_at DESC")
   @c=Comment.where(article_id:@article).count
  end

  def new
  @article=current_user.articles.build
  end

  def edit
  #@article = Article.find(params[:id])
  end

  def create
  @article =current_user.articles.build(article_params)

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

  def find_a
    @article = Article.find(params[:id])
  end
end
