Rails.application.routes.draw do
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

  get 'rsvp_going' => 'user_game_pairs#rsvp_going', :as => :rsvp_going
  get 'rsvp_maybe' => 'user_game_pairs#rsvp_maybe', :as => :rsvp_maybe

end
