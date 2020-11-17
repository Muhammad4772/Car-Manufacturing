class Vandor < ApplicationRecord
  belongs_to :company

  has_many :uservandors
  has_many :users, through: :uservandors
end
