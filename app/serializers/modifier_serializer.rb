class ModifierSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:id, :health_effect, :healing_effect, :damage_effect, :cooldown_effect, :game_save)
end