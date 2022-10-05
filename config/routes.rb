Rails.application.routes.draw do

  get("/rock", { :controller => "application", :action => "play_rock"}) # when someone visits /rock, execute a Ruby method called play_rock
end
