class Modal < ApplicationRecord
    belongs_to :car

    has_many :modaldesigars
	has_many :designars, through: :modaldesigars
end
