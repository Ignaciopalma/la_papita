class OrderDetail < ActiveRecord::Base
	belongs_to :product
	belongs_to :order
end
