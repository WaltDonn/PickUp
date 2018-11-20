json.extract! user, :id, :email, :first_name, :last_name, :password, :password_confirmation, :bio, :age, :time_dist, :game_in_range, :curr_location, :created_at, :updated_at
json.url user_url(user, format: :json)
