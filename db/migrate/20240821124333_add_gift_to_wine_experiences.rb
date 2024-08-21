class AddGiftToWineExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :wine_experiences, :gift, :boolean, default: false
  end
end
