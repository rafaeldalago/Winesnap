# == Schema Information
#
# Table name: experiences
#
#  id              :bigint           not null, primary key
#  location        :string
#  notes           :text
#  price           :integer
#  rating          :decimal(, )
#  tasted_on       :date             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null
#  wine_vintage_id :bigint           not null
#
# Indexes
#
#  index_experiences_on_user_id          (user_id)
#  index_experiences_on_wine_vintage_id  (wine_vintage_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (wine_vintage_id => wine_vintages.id)
#
class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :wine_vintage
  has_one :wine, through: :wine_vintage

  validates :rating, numericality: { in: 0..10, message: 'Rating must be between 0 and 10' }
  validates_presence_of :wine_vintage, :user
end
