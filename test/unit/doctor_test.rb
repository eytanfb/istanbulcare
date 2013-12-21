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

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
