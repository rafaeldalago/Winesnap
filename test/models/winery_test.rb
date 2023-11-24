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
require "test_helper"

class WineryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
