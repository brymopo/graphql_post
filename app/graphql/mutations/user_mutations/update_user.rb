module Mutations
  module UserMutations
    class UpdateUser < Mutations::BaseMutation
      argument :user, Types::Inputs::UpdateUser, required: true

      field :success, Boolean, null: false

      def resolve(user:)
        target_user = User.find(user.id)
        if target_user.update(user.to_h)
          { success: true }
        else
          { success: false }
        end
      end
    end
  end
end