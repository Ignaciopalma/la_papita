class Product < ActiveRecord::Base
	belongs_to :category
	has_many :order_details
	has_many :consumptions
	has_many :supplies, through: :consumptions

	accepts_nested_attributes_for :consumptions
end
