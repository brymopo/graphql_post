module Types
  module Inputs
    class UserInput < GraphQL::Schema::InputObject
        description "Fields to create/update one user"
    
        argument :id, ID, "The user's ID", required: false
        argument :first_name, String
        argument :last_name, String
        argument :street, String, required: false
        argument :number, String, required: false
        argument :city, String, required: false
        argument :postcode, String, required: false
        argument :country, String, required: false
        argument :posts_attributes, [NestedAttributes], "User's post's attributes", required: false
      end
  end
end
