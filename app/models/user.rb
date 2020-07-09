class User < ApplicationRecord
    # Database Relationships
    has_many(:game_saves, class_name: "GameSave")

    # Database Validatons
    validates(:email, presence: true)
    validates(:email, uniqueness: true)
    validates(:first_name, presence: true)
    validates(:last_name, presence: true)
    

    # Instance Methods
    def name
        "#{self.first_name} #{self.last_name}"
    end

    def game_save_character_names
        self.game_saves.map{|game_save| game_save.character.name}
    end

    def game_save_character_image_urls
        self.game_saves.map{|game_save| game_save.character.image_url}
    end

end
