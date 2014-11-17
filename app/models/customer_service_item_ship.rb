class CustomerServiceItemShip < ActiveRecord::Base
  belongs_to :customer
  belongs_to :service_item
end
