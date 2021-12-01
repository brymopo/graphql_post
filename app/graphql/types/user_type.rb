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

  class UserInputType < GraphQL::Schema::InputObject
    description "Fields to create/update one user"

    argument :id, ID, "The user's ID"
    argument :first_name, String
    argument :last_name, String
    argument :street, String
    argument :number, String
    argument :city, String
    argument :postcode, String
    argument :country, String
    argument :full_address, String
    argument :posts, ID, "User's post's attributes"
  end
end