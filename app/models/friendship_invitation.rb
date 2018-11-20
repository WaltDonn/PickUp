class FriendshipInvitation < ApplicationRecord
	#Relationships
  	#-----------------------
	belongs_to :user
  	#Scopes
  	#-----------------------
  	#Validations
  	#-----------------------
	validates_presence_of :inviteeID, :inviterID
  	#Misc Methods and Constants
  	#-----------------------
  	#Use private methods to execute the custom validations
  	#------------------------
  	private
end
