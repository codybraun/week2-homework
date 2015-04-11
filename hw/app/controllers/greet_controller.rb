class GreetController < ApplicationController
  
  def greet 
    if params[:salutation].nil?
      @salutation = "Hello"
    else
      @salutation = params[:salutation]
    end
    render "show_greeting"
  end
  
end