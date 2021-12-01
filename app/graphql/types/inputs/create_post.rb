module Types
  module Inputs
    class CreatePost < Types::BaseInputObject
      description "attributes to create one post"

      argument :body, String, required: false
      argument :user_id, ID, required: true
    end
  end
end
