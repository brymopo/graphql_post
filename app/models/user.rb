class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  def full_address
    [number, street, city, postcode, country].compact.join(" ")
  end
end
