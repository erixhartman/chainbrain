class User < ApplicationRecord
  has_many :locations
  has_many :ratings
end
