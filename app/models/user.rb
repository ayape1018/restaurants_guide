class User < ApplicationRecord
  scope :by_id, ->{ order(id: :asc) }

  validates :first_name, presence: true
  validates :first_name, uniqueness: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :tel, presence: true

  def full_name
    "#{last_name} #{first_name} "
  end
  
end
