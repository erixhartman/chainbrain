class Location < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :reviews

  def location_rating
    location_ratings = []
    self.reviews.each do |x|
       location_ratings << x.rating
    end
    return location_ratings.inject{ |sum, el| sum + el }.to_f / location_ratings.size
  end



end
