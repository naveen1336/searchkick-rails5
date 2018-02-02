# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string
#  synopsis     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country      :string
#  year         :integer
#  review       :float
#  rating       :string
#  runtime      :integer
#  language     :string
#  release_date :date
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
