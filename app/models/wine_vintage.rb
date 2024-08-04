class WineVintage < ApplicationRecord
  belongs_to :wine
  has_many :wine_experiences
end
