class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:name, :catchphrase, :health, :image_url, :abilities)
end
