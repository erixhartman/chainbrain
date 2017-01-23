class User < ApplicationRecord
  has_many :locations
  has_many :reviews
  has_secure_password
end
