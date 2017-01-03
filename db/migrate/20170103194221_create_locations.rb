class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :company_id
      t.integer :user_id
      t.string :address
      t.float :rating
      t.timestamps
    end
  end
end
