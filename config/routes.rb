PoetrySlam::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "masters#new", :as => "signup"
  
  get "round_score/:id" => 'rounds#score', :as => 'score'
  put 'round_score/:id' => 'rounds#save_score', :as => 'save_score'
  get 'round_result/:id' => 'rounds#round_result', :as => 'round_result'
  put 'advance_round/:id' => 'rounds#advance_round', :as => 'advance_round'
  
  get 'slam_final/:id' => 'slams#slam_final', :as => 'slam_final'
  
  get 'new_poet_for_round/:id' => 'poets#add_poet', :as => 'add_poet'
  post 'new_poet_for_round/:id' => 'poets#save_poet_for_round'
    
  root :to => 'slams#new'
  
  resources :poets, :performances, :rounds, :sessions, :masters, :slams

end
