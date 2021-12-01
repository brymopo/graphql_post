module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::UserMutations::CreateUser
    field :update_user, Boolean, mutation: Mutations::UserMutations::UpdateUser
  end
end
