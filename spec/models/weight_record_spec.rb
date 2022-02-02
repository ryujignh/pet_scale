require 'rails_helper'
RSpec.describe WeightRecord, type: :model do
  context "associations" do
    let(:weight_record) { create(:weight_record) }
    it "belongs_to pet" do
      expect(weight_record.pet.present?).to be true
    end
  end
end
