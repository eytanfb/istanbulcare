class Visual < ActiveRecord::Base
  belongs_to :patient
  attr_accessible :date, :image_url, :notes, :type
end
