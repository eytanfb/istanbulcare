# == Schema Information
#
# Table name: prescriptions
#
#  id                :integer          not null, primary key
#  prescription_code :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  doctor_id         :integer
#  patient_id        :integer
#

class Prescription < ActiveRecord::Base
  attr_accessible :prescription_code
  
  has_many :drugs
end
