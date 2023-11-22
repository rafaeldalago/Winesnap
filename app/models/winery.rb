class Winery < ApplicationRecord
  belongs_to :location
  has_many :wines

  def full_description
    "#{name} (#{location.full_location})"
  end
end
