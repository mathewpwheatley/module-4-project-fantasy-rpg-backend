class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:email, :name, :first_name, :last_name, :game_saves)
end