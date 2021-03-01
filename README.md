'Crypto Trader' Ruby on Rails Application

This application acts as a cryptocurrency trading manager with full CRUD capabilities and basic user authorization. There are several quick steps that are necessary to begin:

Usage
First, open up the project repository in your development environment. Ensure you are in the correct directory by entering:

cd crypto_trader

Once here, enter the following into your terminal:

bundle install

This will install all necessary dependencies from the Gemfile

To seed some preliminary information into the database, enter the following into your terminal:

rails db:seed

From here, you are ready to begin using the crypto_trader application. Run the rails server by entering the following in your terminal:

rails s

once the server is running, you can navigate to the dedicated port (http://localhost:3000) and follow the on-screen prompts and links to use the application.

Remember to exit the rails server in your terminal (ctrl + c) before closing out your development environment!

User Info
Some user accounts have been set up in the seed file. Their information is as follows:

username: john
email: john@gmail.com
password: john

username: annie
email: annie@gmail.com
password: annie

username: mike
email: mike@gmail.com
password: mike

Contribution
All collaborations are welcome! I plan to continue my work on this project in order to add features, and am always open to new ideas. You can navigate to the following repository on GitHub for pull requests and bug reports:

https://github.com/JTheoMitr/crypto_trader

License
This application is open source and available under terms designated by the MIT License:

https://opensource.org/licenses/MIT
