class User < ApplicationRecord
  has_secure_password
  has_many :favourites, dependent: :destroy
  has_many :houses, through: :favourites

  validates_presence_of :name, :username, :password_digest
  validates_uniqueness_of :username
end
