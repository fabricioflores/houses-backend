# == Schema Information
#
# Table name: houses
#
#  id             :bigint           not null, primary key
#  address        :string
#  address_lonlat :geography        point, 4326
#  bathrooms      :integer
#  bedrooms       :integer
#  description    :string
#  features       :string           default([]), is an Array
#  floorspace     :integer
#  name           :string
#  price          :integer
#  property_type  :enum
#  slug           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_houses_on_slug  (slug) UNIQUE
#
require "test_helper"

class HouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
