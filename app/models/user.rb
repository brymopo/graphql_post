class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  accepts_nested_attributes_for :posts

  def full_address
    [number, street, city, postcode, country].compact.join(" ")
  end
end
