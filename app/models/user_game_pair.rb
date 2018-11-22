class UserGamePair < ApplicationRecord
    #Relationships
    #-----------------------
    belongs_to :user
    belongs_to :game

    #Validations
    #-----------------------
    validates :maybe_going, inclusion: { in: [true, false] }
    validates :is_creator, inclusion: { in: [true, false] }
end
