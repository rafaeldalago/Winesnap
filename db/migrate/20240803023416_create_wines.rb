class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :edition
      t.string :variety
      t.references :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
