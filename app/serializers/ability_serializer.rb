class AbilitySerializer
  include FastJsonapi::ObjectSerializer
  attributes(:id, :name, :group, :description, :healing_effect, :damage_effect, :cooldown, :character)
end