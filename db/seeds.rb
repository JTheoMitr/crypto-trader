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

u = User.create({ username: 'John', email: '' })

btc = Cryptocoin.create(name: 'Bitcoin', dollar_value: 52383.79)
graph = Cryptocoin.create(name: 'The Graph', dollar_value: 2.25)
compound = Cryptocoin.create(name: 'Compound', dollar_value: 465.99)
stellar = Cryptocoin.create(name: 'Stellar Lumens', dollar_value: 0.5)

invest_one = u.investments.create(amount: 500.55, cryptocoin: btc)