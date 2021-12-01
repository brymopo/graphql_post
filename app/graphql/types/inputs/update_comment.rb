module Types
  module Inputs
    class UpdateComment < Types::BaseInputObject
      description "attributes to update one comment"

      argument :id, ID
      argument :body, String, required: false
    end
  end
end
