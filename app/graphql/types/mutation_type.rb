module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::UserMutations::CreateUser
    field :update_user, Boolean, mutation: Mutations::UserMutations::UpdateUser
    field :delete_user, Boolean, mutation: Mutations::UserMutations::DeleteUser
  end
end
