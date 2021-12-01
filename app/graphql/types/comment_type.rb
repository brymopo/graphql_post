module Types
  class CommentType < Types::BaseObject
    description "One comment"

    field :id, ID, null: false
    field :body, String, null: true
    field :post, Types::PostType, null: false
  end
end