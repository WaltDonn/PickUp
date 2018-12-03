class UserGamePair < ApplicationRecord
    #Relationships
    #-----------------------
    belongs_to :user
    belongs_to :game

    #Validations
    #-----------------------
    validates :maybe_going, inclusion: { in: [true, false] }
    validates :is_creator, inclusion: { in: [true, false] }

    scope :for_user, -> (user_id) { where("user_id = ?", user_id)}


end
