module Types
  class UserType < Types::BaseObject
    field :Use_Email, ID, null: false
    field :Use_Password, String, null: true
    field :Use_Name, String, null: true
    field :Use_Last_Name1, String, null:false
    field :Use_Last_Name2, String, null:false
  end
end
