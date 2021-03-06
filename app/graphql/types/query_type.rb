module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :user, Types::UserType, null: false,
      description: "Shows one user" do
        argument :id, ID, required: true
      end
    def user(id:)
      User.find_by_id(id)
    end

    field :post, Types::PostType, null: false,
      description: "show one post" do
        argument :id, ID, required: true
      end
    def post(id:)
      Post.find_by_id(id)
    end

    field :comment, Types::CommentType, null: false,
      description: "Show one comment" do
        argument :id, ID, required: true
      end
      def comment(id:)
        Comment.find_by_id(id)
      end
  end
end
