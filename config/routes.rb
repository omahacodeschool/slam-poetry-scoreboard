PoetrySlam::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "masters#new", :as => "signup"
  
  get "round_score/:id" => 'rounds#score', :as => 'score'
  put 'round_score/:id' => 'rounds#save_score', :as => 'save_score'
  
  root :to => 'slams#new'

  resources :poets, :performances, :rounds, :slams, :sessions, :masters

end
