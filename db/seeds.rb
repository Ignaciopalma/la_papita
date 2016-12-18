# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def generatePriceArray 
	a = 1000;
	pricesArray = []
	while a <= 3500 do
		pricesArray.push(a)
		a += 500
	end
	return pricesArray
end

def getRandomPrice 
	availablePrices = generatePriceArray.length
	index = Random.rand(0..availablePrices - 1)
	return generatePriceArray[index]
end

Product.create(name: 'Lomo Luco', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Hamburguesa Chacarero', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Hamburguesa Italiana', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Hamburguesa Luco', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Hamburguesa a lo Pobre', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Pollo Chacarero', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Pollo Italiana', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Pollo Luco', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Pollo a lo Pobre', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Vegeratriano', price: getRandomPrice, stock: 20, category_id: 3);
Product.create(name: 'Italiano', price: getRandomPrice, stock: 20, category_id: 5);
Product.create(name: 'Italiano Americana', price: getRandomPrice, stock: 20, category_id: 5);
Product.create(name: 'Fajitas Pollo Quesa Camaron', price: getRandomPrice, stock: 20, category_id: 9);
Product.create(name: 'Fajitas Camaron Queso', price: getRandomPrice, stock: 20, category_id: 9);
Product.create(name: 'Papas Fritas', price: getRandomPrice, stock: 20, category_id: 6);
Product.create(name: 'Empanadas', price: getRandomPrice, stock: 20, category_id: 6);
Product.create(name: 'Nuggets', price: getRandomPrice, stock: 20, category_id: 6);
Product.create(name: 'Chorrillana', price: getRandomPrice, stock: 20, category_id: 6);
Product.create(name: 'Batidos Chico', price: getRandomPrice, stock: 20, category_id: 7);
Product.create(name: 'Batidos Grande', price: getRandomPrice, stock: 20, category_id: 7);
