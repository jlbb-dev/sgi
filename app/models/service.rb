class Service < ApplicationRecord
  belongs_to :tecnic
  belongs_to :area
  belongs_to :service_area
  belongs_to :service_mode
  belongs_to :service_type
  scope :abc, ->(start_date, end_date) {
  where("services.date >= '#{start_date}' and services.date <= '#{end_date}'")
} 
end
