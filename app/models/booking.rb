class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  validates :day, :hour, :students_number, presence: true

  monetize :price_cents

  def date
    "#{day}#{hour}"
  end

  def sku
    "booking-#{id}"
  end
end
