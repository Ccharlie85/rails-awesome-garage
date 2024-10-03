class Review < ApplicationRecord
  belongs_to :car

  validate :comment, presence: true
  validate :rating, numericality: { only_integer: true }
end
