class Investment < ApplicationRecord
    belongs_to :cryptocoin
    belongs_to :user

    # accepts_nested_attributes_for :cryptocoin

    
end
