class Flight < ApplicationRecord
    has_many :airports
    belongs_to :airports
end
