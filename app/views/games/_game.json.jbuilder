json.extract! game, :id, :time, :max_size, :curr_size, :description, :location_id, :sport_id, :created_at, :updated_at
json.url game_url(game, format: :json)
