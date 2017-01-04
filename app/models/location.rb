class Location < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :ratings

  def location_rating
    Rating.where(location_id: self.id).average("rating")
  end

end
