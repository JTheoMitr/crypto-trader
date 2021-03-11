class Cryptocoin < ApplicationRecord
    has_many :investments
    has_many :users, through: :investments


    def self.alphabetize
        self.order(name: :asc)
    end
end
