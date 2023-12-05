# == Schema Information
#
# Table name: wines
#
#  id         :bigint           not null, primary key
#  edition    :string
#  name       :string
#  variety    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  winery_id  :bigint           not null
#
# Indexes
#
#  index_wines_on_winery_id  (winery_id)
#
# Foreign Keys
#
#  fk_rails_...  (winery_id => wineries.id)
#
class Wine < ApplicationRecord
  belongs_to :winery
  has_many :wine_vintages

  validates :name, presence: true
  validates_presence_of :winery

  def full_description
    "#{variety}#{" #{edition}" if edition.present?}, #{name} (#{winery.location.full_location})"
  end
end
