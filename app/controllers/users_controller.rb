class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @articles=@user.articles
  end
  def show_prof
    @user=current_user
  end
end
