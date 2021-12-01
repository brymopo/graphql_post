module Mutations
  module PostMutations
    class DeletePost < Mutations::BaseMutation
      description "deletes one post"

      argument :id, ID, "The ID of the post to delete"

      field :success, Boolean, null: false

      def resolve(id:)
        target = Post.where(id: id).destroy_all
        { success: !target.blank? } 
      end
    end
  end
end
