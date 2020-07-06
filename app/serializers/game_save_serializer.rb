class GameSaveSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:current_round, :user, :character, :modifiers)
end