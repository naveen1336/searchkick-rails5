# == Schema Information
#
# Table name: crews
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Crew < ApplicationRecord
  has_many :roles
  has_many :movies, through: :roles

  validates :name, uniqueness: true
end
