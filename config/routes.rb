Rails.application.routes.draw do
  resources :friendships
  resources :friendship_invitations
  resources :users
  resources :locations
  resources :games
  resources :sports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
