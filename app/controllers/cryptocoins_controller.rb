class CryptocoinsController < ApplicationController

    def index
        @cryptocoins = Cryptocoin.all
    end
end
