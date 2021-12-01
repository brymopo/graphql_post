module Types
  module Inputs
    class UpdatePost < Types::BaseInputObject
      description "attributes to update one post"

      argument :id, ID
      argument :body, String, required: false
    end
  end
end