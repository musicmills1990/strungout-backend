class StringPackSerializer
  include FastJsonapi::ObjectSerializer
  attributes :guage,
  :brand, :model, :price, :low_e_string_counter, :a_string_counter, :d_string_counter, :g_string_counter, :b_string_counter, :high_e_string_counter
end
