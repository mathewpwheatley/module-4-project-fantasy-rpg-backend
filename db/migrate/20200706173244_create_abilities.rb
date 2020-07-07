class CreateAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :abilities do |t|
      t.string :name , null: false
      t.string :group, null: false
      t.string :description, null: false
      t.integer :healing_effect, null: false, default: 0
      t.integer :damage_effect, null: false, default: 0
      t.integer :cooldown, null: false, default: 0
      t.belongs_to :character, null: false, foreign_key: {on_delete: :cascade}
    end
  end
end
