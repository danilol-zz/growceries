class ShopList < ApplicationRecord
  has_and_belongs_to_many :products

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
end
