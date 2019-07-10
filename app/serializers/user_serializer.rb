class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :player_type
end
  
