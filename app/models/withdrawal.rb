class Withdrawal < ApplicationRecord
    belongs_to :cryptocoin
    belongs_to :user
    validates :amount, presence: true

    def crypto_yield
        (self.amount / self.cryptocoin.dollar_value)
    end

    def self.ordered_by_amount
        self.order(amount: :desc)
    end

    def readable_time
        self.created_at.strftime("%B %-d, %Y at %H:%M %p")
    end

end
