PoetrySlam::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "masters#new", :as => "signup"
  
  get "round_score/:id" => 'rounds#score', :as => 'score'
  put 'round_score/:id' => 'rounds#save_score', :as => 'save_score'
  get 'round_result/:id' => 'rounds#round_result', :as => 'round_result'
  put 'advance_round/:id' => 'rounds#advance_round', :as => 'advance_round'
  
  put 'slam_final/:id' => 'slams#slam_final', :as => 'slam_final'
  root :to => 'slams#new'
  
  resources :poets, :performances, :rounds, :sessions, :masters, :slams

end
