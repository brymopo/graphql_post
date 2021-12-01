module Mutations
  module CommentMutations
    class UpdateComment < Mutations::BaseMutation
      description "updates one comment"

      argument :comment, Types::Inputs::UpdateComment

      field :comment, Types::CommentType, null: true
      field :errors, [String], null: true

      def resolve(comment:)
        target = Comment.find(comment.id)
        if target.update(comment.to_h)
          {
            comment: target
          }
        else
          { errors: target.errors.full_messages }
        end
      end
    end
  end
end
