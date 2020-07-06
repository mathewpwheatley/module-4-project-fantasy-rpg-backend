# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Seed counts
user_seeds = 10
character_seeds = 5
ability_seeds = 15
game_save_seeds = 10
modifier_seeds = 10

# Clear Old Seeds (Note database is setup to cascade delete)
User.destroy_all
Character.destroy_all
Modifier.destroy_all

# User seeds
user_seeds.times do 
    User.create(
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end

# Character seeds
character_seeds.times do
    Character.create(
        name: Faker::Name.name,
        catchphrase: Faker::Company.catch_phrase,
        image_url: Faker::Company.logo
    )
end

# Ability seeds
ability_seeds.times do
    Ability.create(
        name: Faker::Name.name,
        healing_effect: rand(0..10),
        damage_effect: rand(0..25),
        cooldown: rand(0..5),
        character_id: Character.all.sample.id
    )
end

# Game save seeds
game_save_seeds.times do
    GameSave.create(
        user_id: User.all.sample.id,
        character_id: Character.all.sample.id,
        current_round: rand(0..5)
    )
end

# Modifier seeds
modifier_seeds.times do
    Modifier.create(
        health_effect: rand(10..25),
        healing_effect: rand(5..15),
        damage_effect: rand(5..20),
        cooldown_effect: rand(1..3)
    )
end