class Friendship < ApplicationRecord
	#Relationships
  	#-----------------------
	belongs_to :user
  belongs_to :friend, :class_name => "User"
  	#Scopes
  	#-----------------------
  	#Validations
  	#-----------------------
	validates_presence_of :friend1ID, :friend2ID
  	#Misc Methods and Constants
  	#-----------------------
  	#Use private methods to execute the custom validations
  	#------------------------
  	private
end
