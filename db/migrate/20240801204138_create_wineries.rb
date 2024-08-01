class CreateWineries < ActiveRecord::Migration[7.0]
  def change
    create_table :wineries do |t|
      t.string :name
      t.string :location
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
