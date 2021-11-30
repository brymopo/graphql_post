module Types
  class CommentType < GraphQL::Schema::Object
    description "One comment"

    field :id, ID, null: false
    field :body, String, null: true
    field :post, Types::PostType, null: false
  end
end