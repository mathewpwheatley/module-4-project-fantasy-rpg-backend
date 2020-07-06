class User < ApplicationRecord
    # Database Relationships
    has_many(:game_saves)

    # Database Validatons
    validates(:email, presence: true)
    validates(:email, uniqueness: true)
    validates(:first_name, presence: true)
    validates(:last_name, presence: true)
    

    # Instance Methods
    def name
        "#{self.first_name} #{self.last_name}"
    end

end
