module Types
  module Inputs
    class CreateComment < Types::BaseInputObject
      description "attributes to create one comment"

      argument :post_id, ID
      argument :body, String
    end
  end
end
