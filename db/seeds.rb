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

j = User.create({ username: 'john', email: 'john@gmail.com', password: 'john', wallet: 10000})
a = User.create({ username: 'annie', email: 'annie@gmail.com', password: 'annie', wallet: 10000})
m = User.create({ username: 'mike', email: 'mike@gmail.com', password: 'mike', wallet: 10000})

btc = Cryptocoin.create(name: 'bitcoin', dollar_value: 52383.79, abv: 'BTC', description: 'Bitcoin is a decentralized digital currency, without a central bank or single administrator, that can be sent from user to user on the peer-to-peer bitcoin network without the need for intermediaries.  Transactions are verified by network nodes through cryptography and recorded in a public distributed ledger called a blockchain. Bitcoins are created as a reward for a process known as mining. They can be exchanged for other currencies, products, and services.')
ethereum = Cryptocoin.create(name: 'ethereum', dollar_value: 1389.25, abv: 'ETH', description: 'Ethereum is a decentralized, open-source blockchain featuring smart contract functionality. Ether (ETH) is the native cryptocurrency of the platform. It is the second-largest cryptocurrency by market capitalization, after Bitcoin.  Ethereum is the most actively used blockchain.')
tether = Cryptocoin.create(name: 'tether', dollar_value: 1.00, abv: 'USDT', description: 'Tether (USDT) has pegged its USDT tokens to the price of the US dollar by using blockchain technology. Tether belongs to the category cryptocurrencies called stablecoins that aims to keep cryptocurrency valuations stable.')
bincoin = Cryptocoin.create(name: 'binance coin', dollar_value: 336.454, abv: 'BNB', description: 'Binance Coin (BNB) is used for trading on the Binance exchange. When using Binance Coin you will receive a discount on the fees you need to pay. Binance aims to create a Decentralized Exchange (DEX) where Binance coin will function as the underlying token.')

cardano = Cryptocoin.create(name: 'cardano', dollar_value: 1.27, abv: 'ADA', description: 'Cardano is a cryptocurrency network and open source project that aims to run a public blockchain platform for smart contracts.  The Cardano internal cryptocurrency is called Ada.  The development of the project is overseen and supervised by the Cardano Foundation based in Zug, Switzerland.')
ripple = Cryptocoin.create(name: 'xrp', dollar_value: 0.7708, abv: 'XRP', description: 'Ripple is both a digital currency (XRP) and an open payment network within which that currency is transferred. Ripple connects banks from all around the world, to provide immediate cross-border transactions with fewer intermediaries. Ripple aims to provide both parties an end-to-end visibility throughout the transactions.')
hex = Cryptocoin.create(name: 'hex', dollar_value: 0.1217, abv: 'HEX', description: 'HEX (HEX) is designed as a store of value for a Certificate of Deposit on the blockchain as used in traditional financial markets. HEX is also designed to leverage off the emerging DeFi.')
doge = Cryptocoin.create(name: 'dogecoin', dollar_value: 0.204, abv: 'DOGE', description: 'Dogecoin (DOGE) is the famous Doge internet meme turned into a full-fledged cryptocurrency. It is created to be a joke currency but it grew into something bigger and more serious than intended. Dogecoin is now described as a decentralized, peer-to-peer digital currency that aims to enable users to easily send money online.')
usdc = Cryptocoin.create(name: 'usdc', dollar_value: 0.999, abv: 'USDC', description: 'USDC (USDC) provides a fully collateralized US dollar stable coin, and is based on the open-source asset-backed stable coin framework developed by CENTRE. The project is the result of a collaboration between Circle and Coinbase.')

dot = Cryptocoin.create(name: 'polkadot', dollar_value: 18.089, abv: 'DOT', description: 'Polkadot (DOT) is built to connect private and association chains, public and permissionless networks, oracles, and future technologies that are yet to be created. Polkadot aims to provide an internet where independent blockchains can swap information and transactions in a reliable way via the Polkadot relay chain.')
uni = Cryptocoin.create(name: 'uniswap', dollar_value: 21.635, abv: 'UNI', description: 'Uniswap (UNI) is the native token of the Uniswap protocol, and&nbsp;provides its holders with governance rights; UNI holders can vote on changes to the protocol. 1 billion UNI tokens have been minted at the beginning. 60% of those are distributed to existing Uniswap community members, and the other 40% will be made available to team members, investors, and advisors.')
terra = Cryptocoin.create(name: 'terra', dollar_value: 11.466, abv: 'LUNA', description: 'Terra is a price-stable cryptocurrency aimed at mass adoption. As its scale grows, the creaters see Terra evolving into a new financial infrastructure for the next generation of decentralized apps.')

binance = Cryptocoin.create(name: 'binance usd', dollar_value: 0.9993, abv: 'BUSD', description: 'BUSD is a stablecoin that is pegged to the US dollar (USD) and issued on the Ethereum blockchain. The issuers of this stablecoin are Binance and Paxos.')
bitcash = Cryptocoin.create(name: 'bitcoin cash', dollar_value: 548.04, abv: 'BCH', description: 'Bitcoin Cash (BCH) is a hard fork of bitcoin. It’s an electronic cash platform that allows peer-to-peer online cash payments to be made without the clearance of a clearinghouse. One of the most pressing issues for bitcoin has always been its scalability; the size of a block of transactions was limited to one MB. Bitcoin Cash was initiated to increase this block size.')

solana = Cryptocoin.create(name: 'solana', dollar_value: 36.8487, abv: 'SOL', description: 'Solana is a high-performance cryptocurrency blockchain which supports smart contracts and decentralized applications. It uses a proof of stake consensus mechanism with a low barrier to entry along with timestamped transactions to maximize efficiency.')
litecoin = Cryptocoin.create(name: 'litecoin', dollar_value: 139.637, abv: 'LTC', description: 'Litecoin is a peer-to-peer decentralized digital currency with an instant, near zero-cost payment service to peers across the world. It features a faster transaction confirmation status, along with a refined storage competency. The average block mining speed in Litecoin is 2.5 minutes, compared to bitcoin’s 10 minutes.')
chainlink = Cryptocoin.create(name: 'chainlink', dollar_value: 22.493, abv: 'LINK', description: 'Chainlink (LINK) is aiming to become a fully decentralized oracle network. It functions like a bridge between smart contracts and off-chain applications, to grant access to off-chain resources like data feeds, web APIs or retail payments for example.')
wrapped = Cryptocoin.create(name: 'wrapped btc', dollar_value: 43221.147, abv: 'WBTC', description: 'WBTC is a community-focused initiative to bring bitcoin to Ethereum as a 1:1 backed token. The custody of the bitcoin reserves is taken care of by BitGo.')
icp = Cryptocoin.create(name: 'internet computer (dfinity)', dollar_value: 54.4329, abv: 'ICP', description: 'The Internet Computer, built by the DFINITY Foundation,is an infinitely scalable blockchain platform that is meant for hosting websites, software systems, open internet services, and DeFi.')
matic = Cryptocoin.create(name: 'polygon', dollar_value: 1.035, abv: 'MATIC', description: 'Polygon (previously Matic Network) aims to bring massive scale to the Ethereum blockchain using an adapted version of Plasma with PoS based side chains.')

pancake = Cryptocoin.create(name: 'pancakeswap', dollar_value: 15.75, abv: 'CAKE', description: 'PancakeSwap token (CAKE) is a BEP-20 token that was launched on Binance Smart Chain, used in the PancakeSwap ecosystem.  CAKE aims to stimulate the liquidity provision to the PancakeSwap platform. Holders of the coin can also stake it to earn rewards.')

ethclassic = Cryptocoin.create(name: 'ethereum classic', dollar_value: 49.48, abv: 'ETC', description: 'Ethereum Classic (ETC) is a decentralized smart contracts platform which is a continuation of the Ethereum blockchain. Ethereum Classic preserves original history, excluding external interference and altered transactions. Applications are run exactly as programmed without the possibility of censorship, downtime, or third-party interference. The distributed network consists of a blockchain ledger, native cryptocurrency, and robust ecosystem of on-chain applications and services.')

vechain = Cryptocoin.create(name: 'vechain', dollar_value: 0.0987, abv: 'VET', description: 'VeChain (VET) is a blockchain platform focussing on creating an ecosystem that can be used by enterprises for products and information. The ecosystem enables transparency and symmetrical information. The VeChain token is called VET and serves as fuel in the VeChain platform.')

theta = Cryptocoin.create(name: 'theta', dollar_value: 6.244, abv: 'THETA', description: 'The Theta Network is a decentralized video delivery network with its own blockchain. This network aims to provide technical and economic solutions to problems in the streaming sector. The Theta blockchain is designed to incentivize the sharing of bandwidth across the network.')

okb = Cryptocoin.create(name: 'okb', dollar_value: 22.004, abv: 'OKB', description: 'OKB (OKB) is a global utility token issued by the OK Blockchain Foundation, set to connect prospective digital asset projects to OKEx users as well as professional investors, creating an OKEx ecosystem that helps to advance the development of blockchain technology and the digital asset industry.')


stellar = Cryptocoin.create(name: 'stellar lumens', dollar_value: 0.5, abv: 'XLM', description: 'Stellar Lumens (XLM) is a digital currency that is similar to Ripple, both being created by Jed McCaleb. Whilst based on the same premise, they have a significant difference, in that Lumens cater towards helping individuals transfer money, rather than institutions. With Lumens, McCaleb has taken more of a Bottom-up approach, rather than the Top-down approach of its predecessor.')
#try with iteration for first 25

a.investments.create(amount: 975, cryptocoin: btc)
a.investments.create(amount: 200, cryptocoin: doge)
a.investments.create(amount: 1000, cryptocoin: stellar)

m.investments.create(amount: 325, cryptocoin: matic)
m.investments.create(amount: 510, cryptocoin: btc)
m.investments.create(amount: 550, cryptocoin: pancake)
m.investments.create(amount: 150, cryptocoin: terra)
m.investments.create(amount: 680, cryptocoin: ethclassic)