class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, uniqueness: true, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
