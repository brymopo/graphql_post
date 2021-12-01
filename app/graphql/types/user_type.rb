module Types
  class UserType < Types::BaseObject
    description "One User"

    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :street, String, null: true
    field :number, String, null: true
    field :city, String, null: true
    field :postcode, String, null: true
    field :country, String, null: true
    field :full_address, String, null: true
    field :posts, [Types::PostType], null: true
  end

  class UserInputType < Types::BaseObject
    description "User input"

    field :id, ID, null: true
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :street, String, null: true
    field :number, String, null: true
    field :city, String, null: true
    field :postcode, String, null: true
    field :country, String, null: true
    field :full_address, String, null: true
    field :posts, [Types::PostType], null: true
  end
end