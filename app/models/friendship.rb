class Friendship < ApplicationRecord
	#Relationships
  	#-----------------------
	belongs_to :user
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
