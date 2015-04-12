Rails.application.routes.draw do
  #PROBLEM 1
  get("/greet", {:controller => 'greet', :action => 'greet'}) 
  #PROBLEM 2
  get("/contact", {:controller => 'contact', :action => 'enter'})
  get("/contact_submitted", {:controller => 'contact', :action => 'submitted'})
  #PROBLEM 3
  get("/rps", {:controller => 'games', :action => 'rps'})
  get("/rps/result", {:controller => 'games', :action => 'show'})
  #PROBLEM 4
  get("/dice", {:controller => 'dicegame', :action => 'roll'})
  get("/dice/firstroll", {:controller => 'dicegame', :action => 'show_first'})
  get("/dice/otherroll", {:controller => 'dicegame', :action => 'show_other'})
end
