# == Schema Information
#
# Table name: vaccines
#
#  id              :integer          not null, primary key
#  date            :date
#  tip             :string(255)
#  expiration_date :date
#  notes           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  patient_id      :integer
#

class Vaccine < ActiveRecord::Base
  attr_accessible :date, :expiration_date, :notes, :tip
  belongs_to :patient
  
  def format_date
    self.date.strftime("%d/%m/%Y")
  end

end
