# == Schema Information
#
# Table name: wine_vintages
#
#  id         :bigint           not null, primary key
#  alcohol    :decimal(, )
#  likes      :integer          default(0)
#  vintage    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wine_id    :bigint           not null
#
# Indexes
#
#  index_wine_vintages_on_wine_id  (wine_id)
#
# Foreign Keys
#
#  fk_rails_...  (wine_id => wines.id)
#
require "test_helper"

class WineVintageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
