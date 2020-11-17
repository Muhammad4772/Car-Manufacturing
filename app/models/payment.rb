class Payment < ApplicationRecord
	has_many :installments
	has_one :user
end
