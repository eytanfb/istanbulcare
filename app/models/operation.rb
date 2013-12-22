# == Schema Information
#
# Table name: operations
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  date       :date
#  notes      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tip_first  :string(255)
#  tip_second :string(255)
#

class Operation < ActiveRecord::Base
  belongs_to :patient
  attr_accessible :date, :notes, :tip_first, :tip_second
  
  def tip
    "#{tip_second} #{tip_second}"
  end

  def format_date
    self.date.strftime("%d/%m/%Y")
  end
end
