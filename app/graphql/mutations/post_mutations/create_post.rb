module Mutations
  module PostMutations
    class CreatePost < Mutations::BaseMutation
      description "creates one post"

      argument :post, Types::Inputs::CreatePost, required: true

      field :post, Types::PostType, null: true
      field :errors, [String], null: true

      def resolve(post:)
        new_post = Post.new(post.to_h)
        if new_post.save
          { post: new_post }          
        else
          { errors: new_post.errors.full_messages }
        end
      end
    end
  end
end
