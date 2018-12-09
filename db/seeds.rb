# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'jfoley1@andrew.cmu.edu', first_name: 'John', last_name: 'Foley', password: 'blah', password_confirmation: "blah", age: 20, time_dist: true, game_in_range: 4)

    # sports = Sport.create([{title: 'Basketball'}, {title: 'Frisbee'}, {title: 'Soccer'}])
    # Location.create(name: 'The Cut', coordinates: '123.34,123.4')
    # games = Game.create([{time: '12/11/2018 03:30 PM', max_size: 45, curr_size: 12, description: "Blah blah", location_id: 1, sport_id: 1}, {time: '12/11/2018 05:30 PM', max_size: 50, curr_size: 10, description: "Blah blah", location_id: 1, sport_id: 2}, {time: '12/14/2018 03:30 PM', max_size: 45, curr_size: 12, description: "Blah blah", location_id: 1, sport_id: 3}])
    # User_Game_Pair.create(maybe_going: 1, is_creator: 0, user_id: 1, game_id: 1)
    # User_Game_Pair.create(maybe_going: 0, is_creator: 1, user_id: 1, game_id: 2)


