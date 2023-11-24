# == Schema Information
#
# Table name: wine_vintages
#
#  id         :bigint           not null, primary key
#  alcohol    :decimal(, )
#  likes      :integer          default(0)
#  vintage    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wine_id    :bigint           not null
#
# Indexes
#
#  index_wine_vintages_on_wine_id  (wine_id)
#
# Foreign Keys
#
#  fk_rails_...  (wine_id => wines.id)
#
class WineVintage < ApplicationRecord
  belongs_to :wine
  has_many :experiences

  def full_name
    "#{vintage} #{wine.name} #{wine.variety}, #{wine.winery.name} (#{wine.winery.location.full_location})"
  end
end
