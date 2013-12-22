class Vaccine < ActiveRecord::Base
  attr_accessible :date, :expiration_date, :notes, :tip
end
