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
  
  belongs_to :doctor, :class_name => "Doctor", :foreign_key => "doctor_id"
  belongs_to :patient, :class_name => "Patient", :foreign_key => "patient_id"
  
  accepts_nested_attributes_for :drugs, :reject_if => :all_blank, :allow_destroy => true
  
  attr_accessible :patient_id, :drugs_attributes
  
  def date
    self.created_at.strftime("%d/%m/%Y")
  end
  
  private
  
  def create_prescription_code
    self.prescription_code = SecureRandom.hex(20)
  end
end
