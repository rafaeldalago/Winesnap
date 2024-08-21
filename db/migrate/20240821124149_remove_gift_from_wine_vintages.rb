class RemoveGiftFromWineVintages < ActiveRecord::Migration[7.0]
  def change
    remove_column :wine_vintages, :gift
  end
end
