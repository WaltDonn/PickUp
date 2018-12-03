Rails.application.routes.draw do

  get 'home', to: 'games#index', as: :home

  resources :user_sport_pairs
  resources :user_game_pairs
  resources :game_invitations
  resources :friendships
  resources :friendship_invitations
  resources :users
  resources :locations
  resources :games
  resources :sports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'games#index'
end
