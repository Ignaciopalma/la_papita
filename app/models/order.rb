class Order < ActiveRecord::Base
	has_many :order_details

	accepts_nested_attributes_for :order_details
end
