class ContactController < ApplicationController
  
  def enter
    render "contact_enter"
  end
  
  def submitted
    @fname = params[:fname]
    @lname = params[:lname]
    render "contact_submitted"
  end
  
end