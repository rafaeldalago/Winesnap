class WineVintage < ApplicationRecord
  belongs_to :wine
  has_many :experiences

  def full_name
    "#{vintage} #{wine.name} #{wine.variety}, #{wine.winery.name} (#{wine.winery.location.full_location})"
  end
end
