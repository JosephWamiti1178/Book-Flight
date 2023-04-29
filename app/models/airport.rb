class Airport < ApplicationRecord
    has_many :flights
    belongs_to :flights
end
