class CryptocoinsController < ApplicationController

    def index
        @cryptocoins = Cryptocoin.all
    end

    def show
        @cryptocoin = Cryptocoin.find_by(id: params[:id])
    end
end