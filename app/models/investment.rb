class Investment < ApplicationRecord
    belongs_to :cryptocoin
    belongs_to :user
end
