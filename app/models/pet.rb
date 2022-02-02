class Pet < ApplicationRecord
  belongs_to :pet_type
  belongs_to :user

  has_many :weight_records

  validates :name, presence: true

end
