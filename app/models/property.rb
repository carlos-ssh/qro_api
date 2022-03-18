class Property < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :rooms, presence: true
  validates :bathrooms, presence: true
  validates :meters, presence: true
  validates :garage, presence: true
  validates :image, presence: true
  validates :for_sale, presence: true

  scope :recent, -> { order(created_at: :desc) }
end
