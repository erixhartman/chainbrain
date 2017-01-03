class User < ApplicationRecord
  has_many :locations
  has_many :ratings
  has_secure_password
end
