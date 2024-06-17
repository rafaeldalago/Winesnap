# == Schema Information
#
# Table name: wineries
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :bigint           not null
#
# Indexes
#
#  index_wineries_on_location_id  (location_id)
#
# Foreign Keys
#
#  fk_rails_...  (location_id => locations.id)
#
class Winery < ApplicationRecord
  belongs_to :location
  has_many :wines

  validates :name, presence: true, uniqueness: { scope: :location, case_sensitive: false }
  validates_presence_of :location

  def full_description
    "#{name} (#{location.full_location})"
  end
end
