json.extract! friendship_invitation, :id, :inviteeID, :inviterID, :created_at, :updated_at
json.url friendship_invitation_url(friendship_invitation, format: :json)
