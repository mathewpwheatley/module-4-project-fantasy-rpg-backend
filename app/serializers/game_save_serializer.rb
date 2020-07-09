class GameSaveSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:id, :current_round, :created_at, :updated_at, :user, :character, :opponent, :modifiers)
end