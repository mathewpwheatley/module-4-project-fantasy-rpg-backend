class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:name, :group, :catchphrase, :health, :image_url, :abilities)
end
