class Character < ApplicationRecord
    # Database Relationships
    has_many(:abilities)

    # Database Validatons
    validates(:name, presence: true)
    validates(:name, uniqueness: true)
    validates(:catchphrase, presence: true)
    validates(:image_url, presence: true)

    # Instance Methods

end
