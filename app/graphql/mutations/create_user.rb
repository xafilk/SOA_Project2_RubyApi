class Mutations::CreateUser < Mutations::BaseMutation
    argument :Use_Name, String, required: true
    argument :Use_Last_Name1, String, required: true
    argument :Use_Last_Name2, String, required: true
    argument :Use_Email, String, required: true
    argument :Use_Password, String, required: true
  
    field :user, Types::UserType, null: false
    field :errors, [String], null: false
  
    def resolve(Use_Name:, Use_Last_Name1:, Use_Last_Name1:, Use_Email:, Use_Password:)
      user = User.new(Use_Name: Use_Name, Use_Last_Name1: Use_Last_Name1,
        Use_Last_Name2: Use_Last_Name2, Use_Email: Use_Email, Use_Password: Use_Password)
      if user.save
        # Successful creation, return the created object with no errors
        {
          user: user,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end