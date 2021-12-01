module Types
  module Inputs
    class NestedAttributes < Types::BaseInputObject
      description "nested attributes for comments and posts"

      argument :body, String
    end
  end
end