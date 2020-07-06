class GameSave < ApplicationRecord
    # Database Relationships
    belongs_to(:user)
    belongs_to(:character)

    # Database Validatons

    # Instance Methods

end
