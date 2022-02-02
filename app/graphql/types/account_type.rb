module Types
  class AccountType < Types::BaseObject
    field :username, String, null: true
    field :email, String, null: true
  end
end
