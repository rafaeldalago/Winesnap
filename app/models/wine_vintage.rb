class WineVintage < ApplicationRecord
  belongs_to :wine

  def full_name
    "#{wine.name}, #{wine.winery.name} (#{wine.winery.location.full_location})"
  end
end
