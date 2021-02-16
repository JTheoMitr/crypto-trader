class User < ApplicationRecord
    has_many :investments
    has_many :cryptocoins, through: :investments
end
