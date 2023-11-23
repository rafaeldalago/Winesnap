class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :wine_vintage
end
