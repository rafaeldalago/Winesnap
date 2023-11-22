class Location < ApplicationRecord
  has_many :wineries

  def full_location
    "#{name}, #{country}"
  end
end
