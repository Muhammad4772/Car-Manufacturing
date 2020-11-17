class Carworker < ApplicationRecord
  belongs_to :car
  belongs_to :worker
end
