Rails.application.routes.draw do

  get("/rock", { :controller => "application", :action => "play_rock"}) # when someone visits /rock, execute a Ruby method called play_rock
  get("/paper", { :controller => "application", :action => "play_paper"}) # when someone visits /paper, execute a Ruby method called play_paper
  get("/scissors", { :controller => "application", :action => "play_scissors"}) # when someone visits /scissors, execute a Ruby method called play_scissors
  get("/", { :controller => "application", :action => "homepage"})
end
