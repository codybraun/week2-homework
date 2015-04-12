class Game < ApplicationController
  
  def initialize()
      @roll_count = 0
      @dice1 = 0 
      @dice2 = 0
      @button_text= "Roll again"
      @button_link = ""
    end
  
  def roll ()
    @roll_count = @roll_count + 1
    @dice1 = [1,2,3,4,5,6].sample()
    @dice2 = [1,2,3,4,5,6].sample()
    result_string = getString(@dice1 + @dice2)
    return result_string
  end
  
  def getString(roll)
    if @roll_count = 1
      if roll == 7 or roll == 11 
        @button_text= "Start over"
        return "You rolled " + roll + ". YOU WIN!"
        
          
      elsif roll == 2 or roll == 3 or roll == 12
        @button_text= "Start over"
        return "You rolled " + roll + ". YOU LOSE!"
      else 
        return "Your goal is now " + roll
        @goal = roll
      end
    else 
      if roll == @goal
        @button_text= "Start over"
        return "You rolled your goal, " + roll + ". YOU WIN!"
      else
        return "Your goal was " + @goal + " but you rolled " + roll + "."
      end
    end
  end
end