class StringPackSerializer
  include FastJsonapi::ObjectSerializer
  attributes :guage, :brand, :model, :price
end
