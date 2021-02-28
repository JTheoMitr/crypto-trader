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

btc = Cryptocoin.create(name: 'Bitcoin', dollar_value: 52383.79, description: 'Bitcoin is a decentralized digital currency, without a central bank or single administrator, that can be sent from user to user on the peer-to-peer bitcoin network without the need for intermediaries.  Transactions are verified by network nodes through cryptography and recorded in a public distributed ledger called a blockchain. Bitcoins are created as a reward for a process known as mining. They can be exchanged for other currencies, products, and services.')
graph = Cryptocoin.create(name: 'The Graph', dollar_value: 2.25, description: 'The Graph is an indexing protocol for querying data for networks like Ethereum and IPFS, powering many applications in both DeFi and the broader Web3 ecosystem. Anyone can build and publish open APIs, called subgraphs, that applications can query using GraphQL to retrieve blockchain data. There is a hosted service in production that makes it easy for developers to get started building on The Graph and the decentralized network will be launching later this year. The Graph currently supports indexing data from Ethereum, IPFS and POA, with more networks coming soon.')
compound = Cryptocoin.create(name: 'Compound', dollar_value: 465.99, description: 'Compound is a software running on Ethereum that aims to incentivize a distributed network of computers to operate a traditional money market.  One of an emerging number of decentralized finance (DeFi) protocols, Compound uses multiple crypto assets to provide this service, enabling the lending and borrowing required without a financial intermediary like a bank.  Put simply, Compound allows users to deposit cryptocurrency into lending pools for access by borrowers. Lenders then earn interest on the assets they deposit.')
stellar = Cryptocoin.create(name: 'Stellar Lumens', dollar_value: 0.5, description: 'Stellar Lumens (XLM) is a digital currency that is similar to Ripple, both being created by Jed McCaleb. Whilst based on the same premise, they have a significant difference, in that Lumens cater towards helping individuals transfer money, rather than institutions. With Lumens, McCaleb has taken more of a Bottom-up approach, rather than the Top-down approach of its predecessor.')

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