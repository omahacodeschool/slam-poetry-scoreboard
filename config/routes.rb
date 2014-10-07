PoetrySlam::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "masters#new", :as => "signup"
  
  root :to => 'slams#new'

  resources :poets, :performances, :rounds, :slams, :sessions, :masters

end
