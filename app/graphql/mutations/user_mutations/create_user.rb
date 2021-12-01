module Mutations
  module UserMutations
    class CreateUser < Mutations::BaseMutation
      argument :user, Types::Inputs::UserInput, required: true

      field :user, Types::UserType, null: false

      def resolve(user:)
        user = User.new(user.to_h)
        if(user.save)
          {
            user: user
          }
        end
      end
    end
  end
end