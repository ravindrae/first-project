class CommentsController < ApplicationController
  before_action :find_article
  before_action :find_comment,only: [:destroy]
  #before_action :owner ,only: [:destroy]
  def create
    @comment =@article.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    if @comment.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def destroy
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  def find_article
    @article=Article.find(params[:article_id])
  end
  def find_comment
    @comment=@article.comments.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:content)
  end
  #def owner
  #  unless current_user.id == @comment.user_id
  #    flash[:notice]="You shall not delete"
  #    redirect_to @article
  #end
end
