class RemoveRatingFromLocations < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :rating, :string
  end
end
