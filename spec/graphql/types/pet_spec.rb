require 'rails_helper'

describe 'Query: pet' do
  let(:query) do
    <<-GRAPHQL
      query($id: ID!) {
        pet(id: $id) {
          id
          userId
          petType {
            name
          }
          name
        }
      }
    GRAPHQL
  end

  let(:result) { PetScaleSchema.execute(query, context: ctx, variables: variables) }
  let(:pet) { create(:pet) }
  let(:user) { pet.user }
  let(:ctx) { { current_user: user } }

  context "when pet id exists" do
    let(:variables) { { id: pet.id } }
    it "should return pet data" do
      result_pet = result["data"]["pet"]
      expect(result_pet["id"]).to eq(pet.id.to_s)
      expect(result_pet["name"]).to eq(pet.name)
    end
  end
end
