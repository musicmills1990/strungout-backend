class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :player_type, :plan, :address, :pay_schedule
  # attribute :guitars do |user|
  #   user.guitars.map do |guitar|
  #     {
  #       guitar_type: guitar.guitar_type,
  #       brand: guitar.brand,
  #       model: guitar.model,
  #       color: guitar.color,
  #     }
  #   end
  # end
end
