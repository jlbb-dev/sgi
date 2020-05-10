class RepairHistory < ApplicationRecord
  belongs_to :area
  belongs_to :repair_type
end
