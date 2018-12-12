class Location < ApplicationRecord

  # Relationships
  # -----------------
  has_many :games

  # Scopes
  #------------------
  scope :for_location, -> (location_id) { where("location_id => ?", location_id) }

  # Validations
  # -----------------
  validates_presence_of :name, :coordinates
  # 40.443218,-79.940224
  validates_format_of :coordinates, :with => /\A\-?(\d{1,})\.(\d{1,})\,\s?\-?(\d{1,})\.(\d{1,})\z/

  # Misc Methods and Constants
  # -----------------
  

  # Use private methods to execute the custom validations
  # -------------------
  private

end
