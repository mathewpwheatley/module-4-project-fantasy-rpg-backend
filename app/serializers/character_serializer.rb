class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:id, :name, :group, :catchphrase, :health, :image_url, :abilities)
end
