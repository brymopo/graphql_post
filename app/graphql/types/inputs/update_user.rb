module Types
  module Inputs
    class UpdateUser < Types::BaseInputObject
      description "Attributes to update one user"

      argument :id, ID
      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :street, String, required: false
      argument :number, String, required: false
      argument :city, String, required: false
      argument :postcode, String, required: false
      argument :country, String, required: false
      argument :posts, ID, "User's post's attributes", required: false
    end
  end
end
