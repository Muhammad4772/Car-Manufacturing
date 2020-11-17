class Car < ApplicationRecord
	has_many :designars

	has_many :car_parts
	has_many :parts, through: :car_parts

	has_many :carworkers
	has_many :workers, through: :carworkers
	
  belongs_to :company
  has_many :installments
  has_many :modals
  belongs_to :user
end
