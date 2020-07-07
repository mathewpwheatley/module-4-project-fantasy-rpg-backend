class AbilitySerializer
  include FastJsonapi::ObjectSerializer
  attributes(:name, :group, :description, :healing_effect, :damage_effect, :cooldown, :character)
end