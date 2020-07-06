class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :catchphrase, null: false
      t.string :image_url, null: false
      t.integer :health, null: false, default: 100
    end
  end
end
