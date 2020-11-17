class Company < ApplicationRecord
	has_many :cars
	has_many :vandors
	has_many :workers
end
