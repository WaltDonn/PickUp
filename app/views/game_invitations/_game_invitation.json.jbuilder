json.extract! game_invitation, :id, :inviterID, :invitee, :gameID, :created_at, :updated_at
json.url game_invitation_url(game_invitation, format: :json)
