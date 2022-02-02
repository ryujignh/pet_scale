require 'rails_helper'
RSpec.describe PetType, type: :model do
  context "associations" do
    let(:pet) { create(:pet_with_weight_records) }
    it "has_many pets" do
      pet_type = pet.pet_type
      expect(pet_type.pets.count).to be 1
    end
  end
end
