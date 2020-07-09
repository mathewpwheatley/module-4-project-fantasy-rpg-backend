class GameSave < ApplicationRecord
    # Database Relationships
    belongs_to(:user)
    belongs_to(:character)
    belongs_to(:opponent, foreign_key: "opponent_id", class_name: "Character")
    has_many(:modifiers)

    # Database Validatons

    # Instance Methods

end
