module Types
  class MutationType < Types::BaseObject
    field :create_user, Types::UserType, mutation: Mutations::User::CreateUser
    #field :update_user, Boolean, mutation: Mutations::User::UpdateUser
  end
end
