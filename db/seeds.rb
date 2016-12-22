# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def generatePriceArray(min, max) 
	a = min;
	pricesArray = []
	while a <= max do
		pricesArray.push(a)
		a += 500
	end
	return pricesArray
end

def getRandomPrice(min, max) 
	availablePrices = generatePriceArray(min, max).length
	index = Random.rand(0..availablePrices - 1)
	return generatePriceArray(min, max)[index]
end

Category.create(name: 'Desayunos');
Category.create(name: 'Jugos');
Category.create(name: 'Sandwiches');
Category.create(name: 'Ensaladas');
Category.create(name: 'Completos');
Category.create(name: 'Fritos');
Category.create(name: 'Batidos');
Category.create(name: 'Fajitas');
Category.create(name: 'Granizados');

Supply.create(name: 'Palta', stock: 10000);
Supply.create(name: 'Queso', stock: 10000);
Supply.create(name: 'Mayonesa', stock: 10000);
Supply.create(name: 'Ketchup', stock: 10000);
Supply.create(name: 'Mechada', stock: 10000);
Supply.create(name: 'Pollo', stock: 10000);
Supply.create(name: 'Vienesas', stock: 10000);
Supply.create(name: 'Jugo de Naranja', stock: 10000);
Supply.create(name: 'Jugo de Frutilla', stock: 10000);
Supply.create(name: 'Lechuga', stock: 10000);
Supply.create(name: 'Tomate', stock: 10000);
Supply.create(name: 'Pan', stock: 10000);
Supply.create(name: 'Cebolla', stock: 10000);


# Product.create(name: 'Lomo Luco', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Hamburguesa Chacarero', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Hamburguesa Italiana', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Hamburguesa Luco', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Hamburguesa a lo Pobre', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Pollo Chacarero', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Pollo Italiana', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Pollo Luco', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Pollo a lo Pobre', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Vegeratriano', price: getRandomPrice(1500, 3500), stock: 20, category_id: 3);
# Product.create(name: 'Italiano', price: getRandomPrice(1500, 3500), stock: 20, category_id: 5);
# Product.create(name: 'Italiano Americana', price: getRandomPrice(1500, 3500), stock: 20, category_id: 5);
# Product.create(name: 'Fajitas Pollo Quesa Camaron', price: getRandomPrice(1500, 3500), stock: 20, category_id: 9);
# Product.create(name: 'Fajitas Camaron Queso', price: getRandomPrice(1500, 3500), stock: 20, category_id: 9);
# Product.create(name: 'Papas Fritas', price: getRandomPrice(1500, 3500), stock: 20, category_id: 6);
# Product.create(name: 'Empanadas', price: getRandomPrice(1500, 3500), stock: 20, category_id: 6);
# Product.create(name: 'Nuggets', price: getRandomPrice(1500, 3500), stock: 20, category_id: 6);
# Product.create(name: 'Chorrillana', price: getRandomPrice(1500, 3500), stock: 20, category_id: 6);
# Product.create(name: 'Batidos Chico', price: getRandomPrice(1500, 3500), stock: 20, category_id: 7);
# Product.create(name: 'Batidos Grande', price: getRandomPrice(1500, 3500), stock: 20, category_id: 7);
