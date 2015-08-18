class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      # do a redirect
      redirect_to @user
    else
      # handle unsuccessful sign up
    end
  end

  def show
    @user = User.find(params[:id])
    @challenges = Challenge.where(:team_id => params[:id])
    @challenge_add = Challenge.new
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end
