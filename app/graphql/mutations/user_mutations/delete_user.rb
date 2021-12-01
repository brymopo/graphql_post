module Mutations
  module UserMutations
    class DeleteUser < Mutations::BaseMutation
      argument :user_id, ID, required: true

      field :success, Boolean, null: false

      def resolve(user_id:)
        target_user = User.where(id: user_id).destroy_all
        { success: !target_user.blank? }
      end
    end
  end
end
