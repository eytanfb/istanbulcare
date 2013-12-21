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
  
  has_many :drugs
  
  before_create :create_prescription_code
  
  private
  
  def create_prescription_code
    self.prescription_code = SecureRandom.hex(20)
  end
end
