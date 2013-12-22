# == Schema Information
#
# Table name: visuals
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  tip        :string(255)
#  image_url  :string(255)
#  date       :date
#  notes      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visual < ActiveRecord::Base
  belongs_to :patient
  attr_accessible :date, :image_url, :notes, :tip
  
  def format_date
    self.date.strftime("%d/%m/%Y")
  end
  
end
