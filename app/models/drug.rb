# == Schema Information
#
# Table name: drugs
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  notes           :text
#  prescription_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Drug < ActiveRecord::Base
  belongs_to :prescription
  attr_accessible :name, :notes
end
