class CryptocoinsController < ApplicationController
    include CryptocoinsHelper

    def index
        @searched_coins = Cryptocoin.search(params[:search])
        @cryptocoins = Cryptocoin.all
        coinlist = get_coins()
        @coins = coinlist
    end

    def show
        @cryptocoin = Cryptocoin.find_by(id: params[:id])
        sleep(1)
        coin_details = find_dollarvalue(@cryptocoin.abv)
        
        if (coin_details == {"Error Message"=>
  "Invalid API call. Please retry or visit the documentation (https://www.alphavantage.co/documentation/) for CURRENCY_EXCHANGE_RATE."})
            redirect_to cryptocoins_path, alert: "That coin is currently unavailable for trade"
        elsif (coin_details == nil)
            redirect_to cryptocoins_path, alert: "Whoops, something went wrong"
        else    
            new_price = coin_details["Realtime Currency Exchange Rate"]["8. Bid Price"]
            # @dollarvalue = coin_details["Realtime Currency Exchange Rate"]["8. Bid Price"]
            @cryptocoin.update(dollar_value: new_price)
        end
    end

    def alphabetize
        @cryptocoins = Cryptocoin.all.alphabetize
    end

    private

    def find_dollarvalue(name)
        request_api(
          "https://alpha-vantage.p.rapidapi.com/query?from_currency=#{URI.encode(name)}&function=CURRENCY_EXCHANGE_RATE&to_currency=USD"
        )
    end

    def get_coins()
        request_api(
            "https://coinranking1.p.rapidapi.com/coins"
        )
    end

end