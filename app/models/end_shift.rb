class EndShift < ActiveRecord::Base

	def createShift(cash)
		#EndShift.create(cashier_name: 'Nachin', cash: cash)
		self.cashier_name = 'Nachin'
		self.cash = cash
	end
end
