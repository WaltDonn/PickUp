class UserSportPair < ApplicationRecord
    #Relationships
    #-----------------------
    belongs_to :user
    belongs_to :sport
end
