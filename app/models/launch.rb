class Launch < ApplicationRecord
  belongs_to :rocket
  validates :name, uniqueness: true, presence: true
  validates :rocket_id, presence: true
end
