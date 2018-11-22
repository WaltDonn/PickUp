class GameInvitation < ApplicationRecord
    #Relationships
    #-----------------------
    belongs_to :inviter, :class_name => 'User'
    belongs_to :invitee, :class_name => 'User'
    belongs_to :game

end
