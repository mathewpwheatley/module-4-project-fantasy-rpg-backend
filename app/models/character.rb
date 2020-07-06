class Character < ApplicationRecord
    # Database Relationships
    has_many(:abilities)
    has_many(:game_saves)

    # Database Validatons
    validates(:name, presence: true)
    validates(:name, uniqueness: true)
    validates(:catchphrase, presence: true)
    validates(:image_url, presence: true)

    # Instance Methods

end
