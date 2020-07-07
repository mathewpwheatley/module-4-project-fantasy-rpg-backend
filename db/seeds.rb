# CSV files are used to seed this database therefore 'csv' is required
require 'csv'

# Seed counts
user_seeds = 10
game_save_seeds = 10
modifier_seeds = 10

# Seed Files
character_seeds_file = "Seed_Data_Characters.csv"
ability_seeds_file = "Seed_Data_Abilities.csv"

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
character_seeds_text = File.read(Rails.root.join("lib","seeds",character_seeds_file))
character_seeds_csv = CSV.parse(character_seeds_text, headers: true, encoding: 'ISO-8859-1')
character_seeds_csv.each do |row|
    Character.create(
        name: row['name'],
        group: row['group'],
        catchphrase: row['catchphrase'],
        image_url: row['image_url'],
        health: row['health']
    )
end

# Ability seeds
ability_seeds_text = File.read(Rails.root.join("lib","seeds",ability_seeds_file))
ability_seeds_csv = CSV.parse(ability_seeds_text, headers: true, encoding: 'ISO-8859-1')
ability_seeds_csv.each do |row|
    character = Character.find_by_name(row["character_name"])
    Ability.create(
        name: row['name'],
        group: row['group'],
        description: row ['description'],
        healing_effect: row['healing_effect'],
        damage_effect: row['damage_effect'],
        cooldown: row['cooldown'],
        character_id: character ? character.id : nil
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
        health_effect: rand(0..25),
        healing_effect: rand(0..15),
        damage_effect: rand(0..20),
        cooldown_effect: rand(0..3),
        game_save_id: GameSave.all.sample.id
    )
end