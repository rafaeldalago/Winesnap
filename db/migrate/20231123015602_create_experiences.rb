class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wine_vintage, null: false, foreign_key: true
      t.text :notes
      t.decimal :rating
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
