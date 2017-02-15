class Review < ApplicationRecord
  belongs_to :restaurant

  validates_numericality_of :rating, only_integer: true
  # validates :rating, inclusion: { in: (0..5).to_a }

  validates :rating, presence: true, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }, numericality: { only_integer: true }
end

