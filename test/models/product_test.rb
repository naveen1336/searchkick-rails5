# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  name         :string
#  price        :float
#  description  :string
#  in_stock     :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  product_type :string
#  gender       :string
#  brand        :string
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
