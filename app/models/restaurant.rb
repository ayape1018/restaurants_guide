class Restaurant < ApplicationRecord
  scope :by_id, ->{ order(id: :asc) }

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :address, presence: true
  validates :tel, presence: true
end
