class Designar < ApplicationRecord
    belongs_to :car
    has_many :modaldesigars
	has_many :modals, through: :modaldesigars
end
