class ChallengesController < ApplicationController


  def create
  	@challenge_add = Challenge.new(params[:name])
    if @challenge_add.save
       redirect_to "http://localhost:3000/users/1"
    else
    	redirect_to "http://localhost:3000"
    end
  end

  def show
  	redirect_to "http://localhost:3000"
  end
 
  def destroy
  end

  def challenge_params
      params.require(:challenge).permit(:name)
    end

end