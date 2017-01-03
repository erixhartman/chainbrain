class Location < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :ratings
end
