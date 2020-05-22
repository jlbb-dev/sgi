class RepairHistory < ApplicationRecord
  belongs_to :service_area
  belongs_to :tecnic
  belongs_to :repair_type
end
