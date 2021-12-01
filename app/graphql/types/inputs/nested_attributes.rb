module Types
  module Inputs
    class NestedAttributes < Types::BaseInputObject
      description "nested attributes for comments and posts"

      argument :body, String
      argument :comments_attributes, [NestedAttributes], "Only for creating comments through posts", required: false
    end
  end
end