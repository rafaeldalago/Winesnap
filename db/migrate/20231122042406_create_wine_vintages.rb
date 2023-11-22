class CreateWineVintages < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_vintages do |t|
      t.integer :vintage
      t.decimal :alcohol
      t.integer :likes, default: 0
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
