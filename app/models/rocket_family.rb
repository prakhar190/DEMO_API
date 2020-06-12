class RocketFamily < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :abbreviation, presence: true
  has_many  :rockets
end
