class GameSave < ApplicationRecord
    # Database Relationships
    belongs_to(:user)
    belongs_to(:character)
    has_many(:modifiers)

    # Database Validatons

    # Instance Methods

end
