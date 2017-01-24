# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# def generatePriceArray(min, max) 
# 	a = min;
# 	pricesArray = []
# 	while a <= max do
# 		pricesArray.push(a)
# 		a += 500
# 	end
# 	return pricesArray
# end

# def getRandomPrice(min, max) 
# 	availablePrices = generatePriceArray(min, max).length
# 	index = Random.rand(0..availablePrices - 1)
# 	return generatePriceArray(min, max)[index]
# end

Category.create(name: 'Desayunos');
Category.create(name: 'Jugos');
Category.create(name: 'Sandwiches');
Category.create(name: 'Ensaladas');
Category.create(name: 'Completos');
Category.create(name: 'Fritos');
Category.create(name: 'Batidos');
Category.create(name: 'Fajitas');
Category.create(name: 'Granizados');

Supply.create(id: 1, name: "Palta", stock: 9800)
Supply.create(id: 2, name: "Queso", stock: 5600)
Supply.create(id: 3, name: "Mayonesa", stock: 9850)
Supply.create(id: 4, name: "Ketchup", stock: 10000)
Supply.create(id: 5, name: "Mechada", stock: 10000)
Supply.create(id: 6, name: "Lomito", stock: 10000)
Supply.create(id: 7, name: "Pollo", stock: 9700)
Supply.create(id: 8, name: "Hamburguesa", stock: 10000)
Supply.create(id: 9, name: "Vienesas", stock: 10000)
Supply.create(id: 10, name: "Jugo de Naranja", stock: 10000)
Supply.create(id: 11, name: "Jugo de Frutilla", stock: 10000)
Supply.create(id: 12, name: "Lechuga", stock: 10000)
Supply.create(id: 13, name: "Tomate", stock: 10000)
Supply.create(id: 14, name: "Jamon", stock: 8300)
Supply.create(id: 15, name: "Pan", stock: 9966)
Supply.create(id: 16, name: "Cebolla", stock: 10000)
Supply.create(id: 17, name: "Papas", stock: 10000)
Supply.create(id: 18, name: "Empanadas", stock: 10000)
Supply.create(id: 19, name: "Te", stock: 9800)
Supply.create(id: 20, name: "Cafe", stock: 9700)
Supply.create(id: 21, name: "Atun", stock: 10000)
Supply.create(id: 22, name: "Salsa Americana", stock: 10000)
Supply.create(id: 23, name: "Camaron", stock: 10000)
Supply.create(id: 24, name: "Champiñon", stock: 10000)
Supply.create(id: 25, name: "Nuggets", stock: 10000)
Supply.create(id: 26, name: "Churrasco", stock: 8200)
Supply.create(id: 27, name: "Huevos", stock: 9600)
Supply.create(id: 28, name: "Jugo Chico Naranja", stock: 8200)
Supply.create(id: 29, name: "Porotos Verdes", stock: 10000)
Supply.create(id: 30, name: "Aji Verde", stock: 10000)

Product.create(id: 1, name: "Barros Luco" , price: 3850, category_id: 1)
Product.create(id: 2, name: "Barros Jarpa" , price: 2050, category_id: 1)
Product.create(id: 3, name: "Cafe" , price: 0, category_id: 1)
Product.create(id: 4, name: "Te" , price: 0, category_id: 1)
Product.create(id: 5, name: "Paila de huevos" , price: 2050, category_id: 1)
Product.create(id: 6, name: "Paila de huevos con Jamon" , price: 2400, category_id: 1)
Product.create(id: 7, name: "Paila de huevos / Queso" , price: 2400, category_id: 1)
Product.create(id: 8, name: "Ave Palta" , price: 3150, category_id: 1)
Product.create(id: 9, name: "Jugo Chico Naranja" , price: 990, category_id: 2)
Product.create(id: 10, name: "Ensalada Atun" , price: 2650, category_id: 4)
Product.create(id: 11, name: "Ensalada Pollo" , price: 2650, category_id: 4)
Product.create(id: 12, name: "Ensalada Vegetariana" , price: 2450, category_id: 4)
Product.create(id: 13, name: "Mechada a lo Pobre" , price: 3750, category_id: 3)
Product.create(id: 14, name: "Mechada Chacarero" , price: 3750, category_id: 3)
Product.create(id: 15, name: "Mechada Italiana" , price: 3750, category_id: 3)
Product.create(id: 16, name: "Mechada Luco" , price: 3750, category_id: 3)
Product.create(id: 17, name: "Churrasco a lo Pobre" , price: 3750, category_id: 3)
Product.create(id: 18, name: "Churrasco Chacarero" , price: 3250, category_id: 3)
Product.create(id: 19, name: "Churrasco Italiano" , price: 3250, category_id: 3)
Product.create(id: 20, name: "Churrasco Luco" , price: 3250, category_id: 3)

Consumption.create(id: 1, product_id: 1, supply_id: 15 , consumption: 2)
Consumption.create(id: 2, product_id: 1, supply_id: 26 , consumption: 200)
Consumption.create(id: 3, product_id: 1, supply_id: 2 , consumption: 300)
Consumption.create(id: 4, product_id: 2, supply_id: 15 , consumption: 2)
Consumption.create(id: 5, product_id: 2, supply_id: 2 , consumption: 200)
Consumption.create(id: 6, product_id: 2, supply_id: 14 , consumption: 200)
Consumption.create(id: 7, product_id: 3, supply_id: 20 , consumption: 300)
Consumption.create(id: 8, product_id: 4, supply_id: 19 , consumption: 200)
Consumption.create(id: 9, product_id: 2, supply_id: 28 , consumption: 200)
Consumption.create(id: 10, product_id: 5, supply_id: 27 , consumption: 200)
Consumption.create(id: 11, product_id: 5, supply_id: 28 , consumption: 200)
Consumption.create(id: 12, product_id: 6, supply_id: 27 , consumption: 200)
Consumption.create(id: 13, product_id: 6, supply_id: 14 , consumption: 300)
Consumption.create(id: 14, product_id: 6, supply_id: 28 , consumption: 200)
Consumption.create(id: 15, product_id: 7, supply_id: 27 , consumption: 200)
Consumption.create(id: 16, product_id: 7, supply_id: 2 , consumption: 300)
Consumption.create(id: 17, product_id: 7, supply_id: 28 , consumption: 200)
Consumption.create(id: 18, product_id: 8, supply_id: 15 , consumption: 2)
Consumption.create(id: 19, product_id: 8, supply_id: 1 , consumption: 200)
Consumption.create(id: 20, product_id: 8, supply_id: 7 , consumption: 300)
Consumption.create(id: 21, product_id: 8, supply_id: 3 , consumption: 150)
Consumption.create(id: 22, product_id: 8, supply_id: 28 , consumption: 200)
Consumption.create(id: 23, product_id: 9, supply_id: 28 , consumption: 200)
Consumption.create(id: 24, product_id: 10, supply_id: 21 , consumption: 250)
Consumption.create(id: 25, product_id: 10, supply_id: 12 , consumption: 300)
Consumption.create(id: 26, product_id: 10, supply_id: 13 , consumption: 400)
Consumption.create(id: 27, product_id: 11, supply_id: 7 , consumption: 200)
Consumption.create(id: 28, product_id: 11, supply_id: 12 , consumption: 300)
Consumption.create(id: 29, product_id: 11, supply_id: 13 , consumption: 125)
Consumption.create(id: 30, product_id: 12, supply_id: 12 , consumption: 200)
Consumption.create(id: 31, product_id: 12, supply_id: 13 , consumption: 350)
Consumption.create(id: 32, product_id: 13, supply_id: 15 , consumption: 2)
Consumption.create(id: 33, product_id: 13, supply_id: 5 , consumption: 300)
Consumption.create(id: 34, product_id: 13, supply_id: 16 , consumption: 340)
Consumption.create(id: 35, product_id: 13, supply_id: 27 , consumption: 200)
Consumption.create(id: 36, product_id: 13, supply_id: 17 , consumption: 500)
Consumption.create(id: 37, product_id: 14, supply_id: 15 , consumption: 2)
Consumption.create(id: 38, product_id: 14, supply_id: 5 , consumption: 400)
Consumption.create(id: 39, product_id: 14, supply_id: 29 , consumption: 333)
Consumption.create(id: 40, product_id: 14, supply_id: 13 , consumption: 200)
Consumption.create(id: 41, product_id: 14, supply_id: 30 , consumption: 123)
Consumption.create(id: 42, product_id: 15, supply_id: 15 , consumption: 2)
Consumption.create(id: 43, product_id: 15, supply_id: 5 , consumption: 450)
Consumption.create(id: 44, product_id: 15, supply_id: 3 , consumption: 300)
Consumption.create(id: 45, product_id: 15, supply_id: 13 , consumption: 123)
Consumption.create(id: 46, product_id: 15, supply_id: 1 , consumption: 300)
Consumption.create(id: 47, product_id: 16, supply_id: 15 , consumption: 2)
Consumption.create(id: 48, product_id: 16, supply_id: 5 , consumption: 300)
Consumption.create(id: 49, product_id: 16, supply_id: 2 , consumption: 250)
Consumption.create(id: 50, product_id: 17, supply_id: 15 , consumption: 2)
Consumption.create(id: 51, product_id: 17, supply_id: 26 , consumption: 450)
Consumption.create(id: 52, product_id: 17, supply_id: 27 , consumption: 300)
Consumption.create(id: 53, product_id: 17, supply_id: 16 , consumption: 304)
Consumption.create(id: 54, product_id: 17, supply_id: 17 , consumption: 200)
Consumption.create(id: 55, product_id: 18, supply_id: 15 , consumption: 2)
Consumption.create(id: 56, product_id: 18, supply_id: 26 , consumption: 280)
Consumption.create(id: 57, product_id: 18, supply_id: 13 , consumption: 200)
Consumption.create(id: 58, product_id: 18, supply_id: 29 , consumption: 100)
Consumption.create(id: 59, product_id: 18, supply_id: 30 , consumption: 200)
Consumption.create(id: 60, product_id: 19, supply_id: 15 , consumption: 2)
Consumption.create(id: 61, product_id: 19, supply_id: 26 , consumption: 300)
Consumption.create(id: 62, product_id: 19, supply_id: 13 , consumption: 200)
Consumption.create(id: 63, product_id: 19, supply_id: 1 , consumption: 200)
Consumption.create(id: 64, product_id: 19, supply_id: 3 , consumption: 100)
Consumption.create(id: 65, product_id: 20, supply_id: 15 , consumption: 2)
Consumption.create(id: 66, product_id: 20, supply_id: 26 , consumption: 200)
Consumption.create(id: 67, product_id: 20, supply_id: 2 , consumption: 123)



# def getProductSeed(arrayOfProducts)
# 	finalString = ""
# 	arrayOfProducts.each do |product|
# 		finalString += "Product.create(id: #{product.id}, name: \"#{product.name}\" , price: #{product.price}, category_id: #{product.category_id}) \n"		
# 	end
# 	return finalString
# end

# def getCashiersSeed(arrayOfCashiers)
# 	finalString = ""
# 	arrayOfCashiers.each do |cashier|
# 		finalString += "Cashier.create(name: \"#{cashier.name}\" , email: \"#{cashier.email}\", password: \"#{cashier.encrypted_password}\") \n"		
# 	end
# 	return finalString
# end

# def getConsumptionSeed(arrayOfConsumptions)
# 	finalString = ""
# 	arrayOfConsumptions.each do |c|
# 		finalString += "Consumption.create(id: #{c.id}, product_id: #{c.product_id}, supply_id: #{c.supply_id} , consumption: #{c.consumption}) \n"		
# 	end
# 	return finalString
# end

# def getSupplySeed(arrayOfSupplies)
# 	finalString = ""
# 	arrayOfSupplies.each do |c|
# 		finalString += "name: \"#{c.name}\", stock: #{c.stock}) \n"		
# 	end
# 	return finalString
# end


# def createProducts(stringOfNames)
# 	arrayOfNames = stringOfNames.split(",")
# 	i = 0
# 	id = 10
# 	while id < arrayOfNames.length do 
# 		Product.create(id: i, name: arrayOfNames[i] , price: getRandomPrice(1500, 4000), category_id: 2)	
# 	end
# end

# def modifyProductsId(products) 
# 	index = 0
# 	while index < products.length do
# 		if products[index].id > 4
# 			products[index].update_attributes(id: products[index].id - 1)
# 		end
# 		index += 1
# 	end
# end

# def modifyConsumptions(consumptions) 
# 	index = 0
# 	while index < consumptions.length do
# 		if consumptions[index].id > 8
# 			consumptions[index].update_attributes(id: consumptions[index].id - 1)
# 			if consumptions[index].product_id > 4
# 				consumptions[index].update_attributes(product_id: consumptions[index].product_id - 1)
# 			end
# 		end
# 		index += 1
# 	end
# end

# insumos = "Palta,Queso,Mayonesa,Ketchup,Mechada,Lomito,Pollo,Hamburguesa,Vienesas,Jugo de Naranja,Jugo de Frutilla,Lechuga,Tomate,Jamon,Pan,Cebolla,Papas,Empanadas,Te,Cafe,Atun,Americana,Camaron,Champiñon,Nuggets,Churrasco,Huevos,Naranja,Verdes,Verde"

# def createSupplies(suppliesString)
# 	suppliesArray = suppliesString.split(",")
# 	index = 0
# 	while index < suppliesArray.length do
# 		Supply.create(name: suppliesArray[index])
# 		index += 1
# 	end
# end

# categories = 'Desayunos,Jugos,Ensaladas,Sandwiches,Completos,Fajitas,Fritos,Batidos,Granizados,Bebidas,Helados'

# def createCategories(categoriesString)
# 	categoriesArray = categoriesString.split(",")
# 	index = 0
# 	while index < categoriesArray.length do
# 		Category.create(name: categoriesArray[index])
# 		index += 1
# 	end
# end

# products = [['Barros Luco', 2450, 'Ensaladas']]
# ingredients = ['Pan', 2, 'Queso', 200, 'Lomito', 300]


# def createProducts(products)
# 	index = 0
# 	while index < products.length do
# 		category_id = Category.where(name: products[index][2]).first.id
# 		product = Product.create(name: products[index][0], price: products[index][1], category_id: category_id)
# 		product.consumptions.create(supply_id: 1, product_id: 1, consumption: 200)
# 		index += 1
# 	end
# end



# products = ['Barros Luco', 2450, 'Ensaladas']
# ingredients = ['Pan', 2, 'Queso', 200, 'Lomito', 300]

# def createProducts(products, ingredients)
# 	index = 0
# 	category_id = Category.where(name: products[2]).first.id
# 	product = Product.create(name: products[0], price: products[1], category_id: category_id)

# 	while index < ingredients.length do
# 		supply_id = Supply.where(name: ingredients[index]).first.id
# 		product.consumptions.create(supply_id: supply_id, product_id: product.id, consumption: ingredients[index + 1])
# 		index += 2
# 	end
# end



