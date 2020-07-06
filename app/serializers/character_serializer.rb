class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:name, :catchprase, :health, :image_url, :abilities)
end
