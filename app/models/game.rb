class Game < ApplicationRecord

  # Relationships
  # -------------------
  belongs_to :location
  belongs_to :sport

  has_many :users, through: :user_game_pairs

  # Scopes
  # --------------------
  scope :for_location, -> (location_id) { where("location_id = ?", location_id) }
  scope :for_sport, -> (sport_id) { where("sport_id = ?", sport_id) }
  scope :not_for_sport, -> (sport_id) { where("sport_id != ?", sport_id) }
  scope :sort_time, -> { order('time ASC') }
  scope :search, -> (term) { where("description LIKE ?", "%#{term}%")}
  scope :sort_location, -> { order('location_id') }


  # Validations
  # --------------------
  validates_presence_of :time, :max_size, :location_id, :sport_id

  validates_numericality_of :max_size, only_integer: true, greater_than: 0

  validates_numericality_of :curr_size, only_integer: true, greater_than: 0, allow_blank: true


  # Misc Methods and Constants
  # --------------------
  def is_full
    return self.curr_size == self.max_size
  end

  #def sort by location?

  # Use private methosd to execute the custom validations
  # ---------------------------
  private

end
