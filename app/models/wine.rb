class Wine < ApplicationRecord
  belongs_to :winery
  has_many :wine_vintages
end
