class CreateWineExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_experiences do |t|
      t.date :tasted_on
      t.string :location
      t.text :notes
      t.integer :price
      t.decimal :rating
      t.references :user, null: false, foreign_key: true
      t.references :wine_vintage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
