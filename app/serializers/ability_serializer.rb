class AbilitySerializer
  include FastJsonapi::ObjectSerializer
  attributes(:name, :healing_effect, :damage_effect, :cooldown, :character)
end