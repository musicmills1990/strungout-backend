class User < ApplicationRecord
  has_secure_password
  has_many  :guitars
  has_one :string_pack
end
