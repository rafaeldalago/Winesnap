# == Schema Information
#
# Table name: countries
#
#  id          :bigint           not null, primary key
#  code        :string
#  name        :string
#  wines_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class CountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
