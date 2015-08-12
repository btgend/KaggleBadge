class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # do a redirect
    else
      # handle unsuccessful sign up
    end
  end

  def show
    @user = User.find(params[:id])
    @challenges = Challenge.where(:team_id => params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end
