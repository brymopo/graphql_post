module Mutations
  module CommentMutations
    class DeleteComment < Mutations::BaseMutation
      description "deletes one comment"

      argument :id, ID

      field :success, Boolean, null: false

      def resolve(id:)
        target = Comment.where(id: id).destroy_all
        { success: !target.blank? }
      end
    end
  end
end
