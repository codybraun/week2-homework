class GamesController < ApplicationController
  
  def rps
    render "show_start"
  end
  
  def show
    @choice = params[:choice].to_i()
    opponent = [0,1,2].sample()
    if @choice == opponent
      @outcome = "It's a tie!"
    elsif (@choice + 1 == opponent) || (@choice==2 && opponent==0)
      @outcome = "You lose!"
    else
      @outcome = "You win!"
    end
    @opponent = getWeapon(opponent)
    render "show_result"
  end
  
  def getWeapon (opponent)
    weapons = ["Rock", "Paper", "Scissors"]
      return weapons[opponent]
  end
  
end