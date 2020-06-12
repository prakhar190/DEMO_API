class Rocket < ApplicationRecord
  belongs_to :rocket_family
  has_many :launches
  validates :name, uniqueness: true, presence: true
  validates :rocket_family_id, presence: true
end
