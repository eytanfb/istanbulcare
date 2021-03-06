# == Schema Information
#
# Table name: doctors
#
#  id                     :integer          not null, primary key
#  email                  :string(255)
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  phone                  :string(255)
#  specialization         :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  tc_no                  :string(255)
#

class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :tc_no, :first_name, :last_name, :phone, :specialization
  
  validates_length_of :tc_no, :within => 11..11, :on => :create, :message => "11 Hane Olmalidir"

  has_many :prescriptions
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
end
