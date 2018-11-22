class FriendshipInvitation < ApplicationRecord
	#Relationships
  	#-----------------------
	belongs_to :user
  belongs_to :friend, :class_name => "User"
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
