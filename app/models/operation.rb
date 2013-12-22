class Operation < ActiveRecord::Base
  belongs_to :patient
  attr_accessible :date, :notes, :tip
end
