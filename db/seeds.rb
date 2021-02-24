# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cryptocoin.destroy_all
Investment.destroy_all

j = User.create({ username: 'john', email: 'john@gmail.com', password: 'john'})
a = User.create({ username: 'annie', email: 'annie@gmail.com', password: 'annie'})
m = User.create({ username: 'mike', email: 'mike@gmail.com', password: 'mike'})

btc = Cryptocoin.create(name: 'Bitcoin', dollar_value: 52383.79)
graph = Cryptocoin.create(name: 'The Graph', dollar_value: 2.25)
compound = Cryptocoin.create(name: 'Compound', dollar_value: 465.99)
stellar = Cryptocoin.create(name: 'Stellar Lumens', dollar_value: 0.5)

j.investments.create(amount: 550, cryptocoin: btc)
j.investments.create(amount: 300, cryptocoin: stellar)
j.investments.create(amount: 700, cryptocoin: graph)
j.investments.create(amount: 250, cryptocoin: btc)
j.investments.create(amount: 800, cryptocoin: compound)

a.investments.create(amount: 975, cryptocoin: btc)
a.investments.create(amount: 200, cryptocoin: compound)
a.investments.create(amount: 1000, cryptocoin: stellar)

m.investments.create(amount: 325, cryptocoin: graph)
m.investments.create(amount: 510, cryptocoin: graph)
m.investments.create(amount: 550, cryptocoin: compound)
m.investments.create(amount: 150, cryptocoin: compound)
m.investments.create(amount: 680, cryptocoin: graph)