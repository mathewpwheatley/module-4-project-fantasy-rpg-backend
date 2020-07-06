class CreateAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :abilities do |t|
      t.string :name , null: false
      t.integer :healing_effect, null: false, default: 0
      t.integer :damage_effect, null: false, default: 0
      t.integer :cooldown, null: false, default: 0
      t.belongs_to :user, null: false, foreign_key: true
    end
  end
end
