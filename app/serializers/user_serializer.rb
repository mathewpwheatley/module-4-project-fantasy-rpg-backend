class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes(:email, :name, :first_name, :last_name, :game_saves, :game_save_character_names, :game_save_character_image_urls)
end