class User < ApplicationRecord
	has_many :installments
	has_one :car
	belongs_to :payment

	has_many :uservandors
	has_many :vandors, through: :uservandors
end
