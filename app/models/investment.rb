class Investment < ApplicationRecord
    belongs_to :cryptocoin
    belongs_to :user
    validates :amount, presence: true


    # accepts_nested_attributes_for :cryptocoin

    def readable_time
        self.created_at.strftime("%B %-d, %Y at %H:%M %p")
    end

    def self.ordered_by_amount
        self.order(amount: :desc)
    end

    def crypto_yield
        (self.amount / self.cryptocoin.dollar_value)
    end

    
end
