module Types
  class PostType < GraphQL::Schema::Object
    description "One Post"

    field :id, ID, null: false
    field :body, String, null: false
    field :user, Types::UserType, null: false
  end
end