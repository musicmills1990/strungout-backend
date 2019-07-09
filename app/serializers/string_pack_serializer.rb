class StringPackSerializer
  include FastJsonapi::ObjectSerializer
  attributes :guage, :brand, :model, :price
  belongs_to :user
end
