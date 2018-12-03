class User < ApplicationRecord
	#Relationships
  	#-----------------------
	has_many :game_invitations
	has_many :user_game_pairs
	has_many :user_sport_pairs
	has_many :friendships
	has_many :friendship_invitations
	has_many :games, through: :user_game_pairs
	has_many :sports, through: :user_sport_pairs
  	#Scopes
  	#-----------------------
  	scope :alphabetical, -> { order('last_name, first_name') }
  	#Validations
  	#-----------------------
	validates :email, :first_name, :last_name, :password, :password_confirmation, :age, :time_dist, :game_in_range, presence: true
	validates_numericality_of :age, :game_in_range, only_integer: true, greater_than: 0
	# if we want to be secure, will need to validate password as well
	validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :time_dist, inclusion: { in: [true, false] }
  	#Misc Methods and Constants
  	#-----------------------
	def my_friends_id_array
		friend1Array = self.friendships.pluck(:friend1ID)
		friend2Array = self.friendships.pluck(:friend2ID)
		combinedArray = friend1Array + friend2Array
		# need to remove all IDs that are the ID of the main user
		finalArray = combinedArray.delete(self.id)
		return finalArray
	end
    def fullName
        return self.first_name + " " + self.last_name
    end
  	#Use private methods to execute the custom validations
  	#------------------------
  	private
end