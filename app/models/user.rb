class User < ApplicationRecord
  has_secure_password
  has_many  :guitars
  has_many :string_packs
  validates :name, :email, :address, presence: true
  validates :email, uniqueness: true

end
