class Mutations::DeleteUser < Mutations::BaseMutation
    argument :Use_Password,String, required:true
  
    field :user, Types::UserType, null: false
    field :errors, [String], null:true
  
    def resolve(Use_Password:)
      user=User.find(id)
      user.destroy
      {user:user}
    end
end
