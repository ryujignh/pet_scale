require 'rails_helper'
RSpec.describe Pet, type: :model do
  context "associations" do
    let(:pet) { create(:pet_with_weight_records) }

    it "belongs_to User" do
      expect(pet.user.present?).to be true
    end

    it "has_many WeightRecords" do
      expect(pet.weight_records.count).to be 10
    end

    it "belongs_to PetType" do
      expect(pet.pet_type.name).to eq "Cat"
    end
  end
end
