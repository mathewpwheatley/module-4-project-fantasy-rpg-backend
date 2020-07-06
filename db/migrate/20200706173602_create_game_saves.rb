class CreateGameSaves < ActiveRecord::Migration[6.0]
  def change
    create_table :game_saves do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :character, null: false, foreign_key: true
      t.integer :current_round, null: false, default: 0
    end
  end
end
