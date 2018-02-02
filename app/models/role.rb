# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  crew_id    :integer
#  job        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
  belongs_to :movie
  belongs_to :crew
end
