module Types
  class UserType < Types::BaseObject
    field :id, ID, null: true
    field :username, String, null: true
    field :email, String, null: true
  end
end
