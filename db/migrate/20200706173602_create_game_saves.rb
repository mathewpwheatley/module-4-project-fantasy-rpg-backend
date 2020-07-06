class CreateGameSaves < ActiveRecord::Migration[6.0]
  def change
    create_table :game_saves do |t|
      t.belongs_to :user, null: false, foreign_key: {on_delete: :cascade}
      t.belongs_to :character, null: false, foreign_key: {on_delete: :cascade}
      t.integer :current_round, null: false, default: 0
    end
  end
end
