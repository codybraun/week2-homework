class GreetController < ApplicationController
  
  def greet 
    if params[:salutation].nil? #Default if no parameter passed
      @salutation = "Hello"
    else
      @salutation = params[:salutation]
    end
    render "show_greeting"
  end
  
end