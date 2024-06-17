# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :bigint
#
# Indexes
#
#  index_locations_on_country_id  (country_id)
#
class Location < ApplicationRecord
  belongs_to :country
  belongs_to :wines
  has_many :wineries
  has_many :wines, through: :wineries

  validates_presence_of :country
  validates :name, uniqueness: { scope: :country, case_sensitive: false }

  def full_location
    "#{name}, #{country.name}"
  end

  def wines_count
    wines.size
  end
end
