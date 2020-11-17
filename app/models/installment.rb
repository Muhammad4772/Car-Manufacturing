class Installment < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :payment
end
