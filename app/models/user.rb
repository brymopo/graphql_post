class User < ApplicationRecord
  has_many :posts

  def full_address
    [number, street, city, postcode, country].compact.join(" ")
  end
end
