module Types
  class PetType < Types::BaseObject
    field :id, ID, null: false
    field :pet_type, PetTypeType, null: true
    field :user_id, ID, null: true
    field :name, String, null: true
  end

  def pet_type
    pet.pet_type
  end
end
