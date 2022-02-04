require 'rails_helper'

describe 'Query: current_user' do
  let(:query) do
    <<-GRAPHQL
      query {
        currentUser {
          id
          username
          email
        }
      }
    GRAPHQL
  end

  let(:result) { PetScaleSchema.execute(query, context: ctx) }
  let(:user) { create(:user) }
  let(:ctx) { { current_user: user } }

  context "when user logged in" do
    it "should return current user data" do
      result_current_user = result["data"]["currentUser"]
      expect(result_current_user["id"]).to eq(user.id.to_s)
      expect(result_current_user["username"]).to eq(user.username)
      expect(result_current_user["email"]).to eq(user.email)
    end
  end

end
