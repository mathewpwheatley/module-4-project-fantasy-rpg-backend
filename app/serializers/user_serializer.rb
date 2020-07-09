class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:id, :email, :name, :first_name, :last_name, :created_at, :updated_at, :game_saves)
end