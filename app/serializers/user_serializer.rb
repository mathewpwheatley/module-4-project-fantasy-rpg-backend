class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:id, :email, :name, :first_name, :last_name, :game_saves)
end