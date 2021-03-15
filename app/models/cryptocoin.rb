class Cryptocoin < ApplicationRecord
    has_many :investments
    has_many :users, through: :investments


    def self.alphabetize
        self.order(name: :asc)
    end

    def self.search(search)
        if search
            crypto_type = Cryptocoin.find_by(name: search.capitalize)
            if crypto_type
                self.where(id: crypto_type)
            else
                @cryptocoins = Cryptocoin.all
            end
        else
            @cryptocoins = Cryptocoin.all
        end
    end

end
