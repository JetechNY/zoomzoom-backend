class Make < ApplicationRecord
    has_many :models
    has_many :reviews, through: :models
end
