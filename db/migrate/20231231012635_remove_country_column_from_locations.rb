class RemoveCountryColumnFromLocations < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :country
  end
end
