module Mutations
  module User
    class CreateUser < GraphQL::Schema::Mutation
      null true

      argument :user, Types::UserInputType, description: "create a User"

      def resolve(user:)
        User.create(user.to_h)
      end
    end
  end
end