class DicegameController < ApplicationController
  
    
  def roll
    @goal = 0
    render "start_game"
  end
  
  def show_first
    @dice1 = [1,2,3,4,5,6].sample()
    @dice2 = [1,2,3,4,5,6].sample()
    @string_to_show, @button_text, @button_link = get_first_string(@dice1 + @dice2)
    @goal = @dice1 + @dice2
    render "show_first_result"
  end
  
  def show_other
    @goal = params[:goal].to_i()
    @dice1 = [1,2,3,4,5,6].sample()
    @dice2 = [1,2,3,4,5,6].sample()
    @string_to_show, @button_text, @button_link = get_other_string(@dice1 + @dice2)
    render "show_other_result"
  end 
  
  def get_first_string(roll)
    button_text= "Roll again"
    button_link = "" 
      if roll == 7 or roll == 11 
        button_text= "Play again"
        button_link = "/dice" 
        return "You rolled " + roll.to_s() + ". YOU WIN!", button_text, button_link
      elsif roll == 2 or roll == 3 or roll == 12
        button_text= "Play again"
        button_link = "/dice" 
        return "You rolled " + roll.to_s() + ". YOU LOSE!", button_text, button_link
      else 
        button_link = "/dice/otherroll" 
        return "Your goal is now " + roll.to_s(), button_text, button_link
        @goal = roll
      end
    end
    
def get_other_string(roll)
    button_text= "Roll again"
    button_link = "" 
      if roll == 7
        button_text= "Play again"
        button_link = "/dice" 
        return "You rolled a 7. YOU LOSE!", button_text, button_link
      elsif roll == @goal
        button_text= "Play again"
        button_link = "/dice" 
        return "You rolled " + roll.to_s() + ". YOU WIN!", button_text, button_link
      else 
        return "You rolled " + roll.to_s() + ",which was not your goal or seven.", button_text, button_link
        button_link = "/dice/otherroll" 
        @goal = roll
      end
    end
    
  
end