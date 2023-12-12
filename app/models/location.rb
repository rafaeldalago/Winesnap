# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  country    :string
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Location < ApplicationRecord
  has_many :wineries
  has_many :wines, through: :wineries

  validates :name, :country, presence: true
  validates :name, uniqueness: { scope: :country, case_sensitive: false }

  def full_location
    "#{name}, #{country}"
  end

  def wines_count
    wines.size
  end
end
