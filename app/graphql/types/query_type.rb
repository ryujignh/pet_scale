module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :current_user, UserType, null: true do
      description "logged-in account"
    end
    def current_user
      context[:current_user]
    end

    field :pets, [PetType], null: true do
      description "current user's pet records"
    end

    def pets
      unless context[:current_user]
        raise GraphQL::UnauthorizedError, "login required"
      end
      current_user.pets
    end

    field :pet, PetType, null: true do
      description "Find pet by id"
      argument :id, ID, required: true
    end

    def pet(id:)
      unless context[:current_user]
        raise GraphQL::UnauthorizedError, "login required"
      end
      current_user.pets.find(id)
    end
  end
end
