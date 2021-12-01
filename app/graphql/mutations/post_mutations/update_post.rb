module Mutations
  module PostMutations
    class UpdatePost < Mutations::BaseMutation
      description "updates one post"

      argument :post, Types::Inputs::UpdatePost

      field :post, Types::PostType, null: true
      field :errors, [String], null: true

      def resolve(post:)
        target = Post.find(post.id)
        if target.update(post.to_h)
          { post: target }
        else
          { errors: target.errors.full_messages }
        end
      end
    end
  end
end