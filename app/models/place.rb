class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  
  validates :description, :address, presence: true
  validates :name, presence: true, length: { minimum: 4 }

end
