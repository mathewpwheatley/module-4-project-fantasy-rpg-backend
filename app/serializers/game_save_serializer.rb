class GameSaveSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:id, :current_round, :user, :character, :opponent, :modifiers)
end