module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::UserMutations::CreateUser
    field :update_user, mutation: Mutations::UserMutations::UpdateUser
    field :delete_user, mutation: Mutations::UserMutations::DeleteUser

    field :create_post, mutation: Mutations::PostMutations::CreatePost
    field :update_post, mutation: Mutations::PostMutations::UpdatePost
    field :delete_post, mutation: Mutations::PostMutations::DeletePost
  end
end
