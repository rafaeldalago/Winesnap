class CreateWineVintages < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_vintages do |t|
      t.decimal :alcohol
      t.integer :vintage
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
