class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :code
      t.string :name
      t.integer :wines_count

      t.timestamps
    end
  end
end
