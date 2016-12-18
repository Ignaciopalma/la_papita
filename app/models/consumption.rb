class Consumption < ActiveRecord::Base
	belongs_to :product
	belongs_to :supply
end
