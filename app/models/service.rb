class Service < ApplicationRecord
  belongs_to :tecnic
  belongs_to :area
  belongs_to :service_area
  belongs_to :service_mode
  belongs_to :service_type
end
