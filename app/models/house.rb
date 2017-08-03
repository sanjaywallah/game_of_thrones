class House < ApplicationRecord
  has_many :characters, dependent: :destroy
  validates :house_name, presence: true
end
