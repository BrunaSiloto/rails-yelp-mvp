class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w(Chinese Brazilian Portuguese Japonese), message: "Hell to the no!"}

end
