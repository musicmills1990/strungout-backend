class User < ApplicationRecord
  has_secure_password
  has_many  :guitars
  has_many :string_packs
end
