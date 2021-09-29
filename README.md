'Crypto Trader' Ruby on Rails Application
---------------

This application acts as a cryptocurrency exchange training platform with full investment capabilities utilizing a virtual currency. There are several quick steps that are necessary to begin:

Usage
-----
First, open up the project repository in your development environment. Ensure you are in the correct directory by entering:

cd crypto_trader test

Once here, enter the following into your terminal:

bundle install

This will install all necessary dependencies from the Gemfile

To seed some preliminary information into the database, enter the following into your terminal:

rails db:seed

From here, you will need a RapidAPI key to launch CryptoTrader.  Head to RapidAPI.com to sign up for their free service and obtain a key.  Once you have a key, you are ready to begin. Run the rails server by entering the following in your terminal:

RAPIDAPI_API_KEY=YOUR-API-KEY-HERE rails server

(replace YOUR-API-KEY-HERE with the key you were provided with)

once the server is running, you can navigate to the dedicated port (http://localhost:3000) and follow the on-screen prompts / links to use the application.

Remember to exit the rails server in your terminal (ctrl + c) before closing out your development environment!

User Info
--------
You can create an account within CryptoTrader or log in with your existing Google Account.  A guest user account has also been set up in the seed file, if you'd rather jump right in as a guest. The information is as follows:

username: guest
email: guest@gmail.com
password: guest


if you have any issues navigating the application, there is a brief walkthrough here: 
www.johntheomitropoulos.com/software

Contribution
---------
All collaborations are welcome! I plan to continue my work on this project in order to add features, and am always open to new ideas. You can navigate to the following repository on GitHub for pull requests and bug reports:

https://github.com/JTheoMitr/crypto-trader

License
------
This application is open source and available under terms designated by the MIT License:

https://opensource.org/licenses/MIT
