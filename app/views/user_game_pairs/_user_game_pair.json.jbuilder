json.extract! user_game_pair, :id, :maybe_going, :is_creator, :userID, :gameID, :created_at, :updated_at
json.url user_game_pair_url(user_game_pair, format: :json)
