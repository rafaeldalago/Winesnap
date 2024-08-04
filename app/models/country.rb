class Country < ApplicationRecord
  has_many :wineries
  has_many :wines, through: :wineries
end
