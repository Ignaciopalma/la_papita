class Supply < ActiveRecord::Base
	has_many :consumptions
	
	has_many :products, through: :consumptions

end
