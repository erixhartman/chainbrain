class RenameRatingsToReviews < ActiveRecord::Migration[5.0]
  def change
    rename_table :ratings, :reviews 
  end
end
