class Dogsitter < ApplicationRecord
  belongs_to :city
  has_many :dogs, through: :stroll
end
