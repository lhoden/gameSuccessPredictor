class Game < ApplicationRecord
  validates :genre, presence: true, length: { minimum: 2, maximum: 100 }
  validates :platform, presence: true, length: { minimum: 2, maximum: 300 }
  validates :developer, presence: true, length: { minimum: 2, maximum: 300 }
end
