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
class Country < ApplicationRecord
  has_many :locations
  has_many :wines, through: :locations, counter_cache: true
end
