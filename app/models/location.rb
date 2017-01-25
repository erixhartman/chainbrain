class Location < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :reviews

  def location_rating
    if self.reviews.count == 0
      return "N/A"
    else
      all_ratings = []
      self.reviews.each do |x|
         all_ratings << x.rating
      end
       return (all_ratings.inject{ |sum, el| sum + el }.to_f / all_ratings.size).round(2)
   end
  end


end
