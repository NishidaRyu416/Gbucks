class Review < ApplicationRecord
  belongs_to :drink
  validates :stars,presence: true
end
