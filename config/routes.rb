PoetrySlam::Application.routes.draw do
  get "sessions/new" => 'sessions#new'

  get "masters/new" => 'masters#new'

  resources :poets, :performances, :rounds, :slams

end
