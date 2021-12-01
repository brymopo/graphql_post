module Mutations
  module CommentMutations
    class CreateComment < Mutations::BaseMutation
      description "creates one comment"

      argument :comment, Types::Inputs::CreateComment

      field :comment, Types::CommentType, null: true
      field :errors, [String], null: true

      def resolve(comment:)
        new_comment = Comment.new(comment.to_h)
        if new_comment.save
          { comment: new_comment }
        else
          { errors: new_comment.errors.full_messages }
        end
      end
    end
  end
end
