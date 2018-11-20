class Sport < ApplicationRecord

  #Relationships
  #-----------------------
  has_many :games
  has_many :user_sports
  has_many :users, through: :user_sports


  #Scopes
  #-----------------------
  scope :by_sport, -> (sport_id) { where("sport_id = ?", sport_id) }


  #Validations
  #-----------------------
  validates :title, presence: true

  #Misc Methods and Constants
  #-----------------------


  #Use private methods to execute the custom validations
  #------------------------
  private



end
