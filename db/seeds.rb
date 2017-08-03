# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Expense.destroy_all
Category.destroy_all

restaurantes = Category.create(name: "Restaurantes")
carro = Category.create(name: "Carro")
hogar = Category.create(name: "Hogar")
tenis = Category.create(name: "Tenis")
futbol = Category.create(name: "Futbol")
perro = Category.create(name: "Perro")

Expense.create(category: restaurantes, date: Date.current, concept: "Hamburguesas el Burral", amount: 32000)
Expense.create(category: restaurantes, date: Date.current - 4, concept: "Hamburguesas el Burral", amount: 45000)
Expense.create(category: carro, date: Date.current, concept: "Gasolina", amount: 80000)
Expense.create(category: hogar, date: Date.current - 6, concept: "Lámparas", amount: 350000)


user = User.find_by(email: 'josepaez_2@hotmail.com')

1.times do |i|
      # t.date :date
      # t.string :concept
      # t.decimal :amount	
  user.expenses.create(category: restaurantes, date: Date.current - 2, concept: "Crepes", amount: 65000)
  user.expenses.create(category: perro, date: Date.current - 8, concept: "Guardería de Tulia", amount: 100000)
  user.expenses.create(category: perro, date: Date.current - 2, concept: "Peluquería de Tulia", amount: 40000)
	user.expenses.create(category: perro, date: Date.current - 3, concept: "Juguetes de Tulia", amount: 40000)
  user.expenses.create(category: futbol, date: Date.current, concept: "Cancha Futbol 5", amount: 15000)
  user.expenses.create(category: futbol, date: Date.current, concept: "Gatorade", amount: 3000)
  # user.expenses[i].sentences.create(word_count: rand(100))
end


user = User.find_by(email: 'z@z.com')

1.times do |i|
  user.expenses.create(category: restaurantes, date: Date.current - 2, concept: "Crepes", amount: 80000)
  user.expenses.create(category: perro, date: Date.current - 10, concept: "Guardería de Ozu", amount: 100000)
  user.expenses.create(category: perro, date: Date.current - 5, concept: "Peluquería de Ozu", amount: 40000)
	user.expenses.create(category: perro, date: Date.current - 5, concept: "Juguetes de Ozu", amount: 40000)
  user.expenses.create(category: tenis, date: Date.current - 1, concept: "Cancha Tenis", amount: 35000)
  user.expenses.create(category: tenis, date: Date.current - 1, concept: "Gatorade", amount: 3000)
  # user.expenses[i].sentences.create(word_count: rand(100))
end

