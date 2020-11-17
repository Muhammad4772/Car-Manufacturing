class Worker < ApplicationRecord
    belongs_to :company

    has_many :carworkers
	has_many :cars, through: :carworker
end
