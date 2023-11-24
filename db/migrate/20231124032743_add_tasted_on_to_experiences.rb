class AddTastedOnToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :tasted_on, :date, null: false
  end
end
