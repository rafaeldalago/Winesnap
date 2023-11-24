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

  def full_location
    "#{name}, #{country}"
  end
end
