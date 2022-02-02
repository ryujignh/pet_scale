class WeightRecord < ApplicationRecord
  belongs_to :pet

  validates :weight, presence: true
end
