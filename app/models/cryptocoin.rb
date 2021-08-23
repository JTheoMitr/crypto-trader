class Cryptocoin < ApplicationRecord
    has_many :investments
    has_many :withdrawals
    has_many :users, through: :investments
    has_many :users, through: :withdrawals


    def self.alphabetize
        self.order(name: :asc)
    end

    def self.search(search)
        if search
            crypto_type = Cryptocoin.find_by(name: search.downcase)
            if crypto_type
                self.where(id: crypto_type)
            else
                @searched_coins = Cryptocoin.all
            end
        else
            @searched_coins = Cryptocoin.all
        end
    end

    def name_for_select
        name.capitalize
    end
    

    
end
