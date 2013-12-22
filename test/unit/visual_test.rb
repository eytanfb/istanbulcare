# == Schema Information
#
# Table name: visuals
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  type       :string(255)
#  image_url  :string(255)
#  date       :date
#  notes      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class VisualTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
