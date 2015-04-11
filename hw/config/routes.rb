Rails.application.routes.draw do
  get("/greet", {:controller => 'greet', :action => 'greet'})
  get("/rps", {:controller => 'games', :action => 'rps'})
  get("/rps/result", {:controller => 'games', :action => 'show'})
  get("/contact", {:controller => 'contact', :action => 'enter'})
  get("/contact_submitted", {:controller => 'contact', :action => 'submitted'})
end
